import express from 'express'
import { fileURLToPath } from 'url'
import jsonServer from 'json-server'
import path from 'path'
import promBundle from 'express-prom-bundle'

// Resolvendo o erro: "__dirname is not defined in ES module scope"
const __filename = fileURLToPath(import.meta.url)
const __dirname = path.dirname(__filename)

const server = express()
const router = jsonServer.router(path.join(__dirname, 'database/db.json'))
const middlewares = jsonServer.defaults()

// Adicionando métricas do Prometheus
const metricsMiddleware = promBundle({
  includeMethod: true, 
  includePath: true, 
  includeStatusCode: true, 
  includeUp: true,
  customLabels: {
    project_name: 'api_blog', 
    project_type: 'api_blog_metrics'
  },
  promClient: {
    collectDefaultMetrics: {}
  }
})

server.use(middlewares)
server.use(metricsMiddleware)
server.use(router)
server.listen(process.env.PORT || 3000, () => {
  console.log("JSON Server is running")
})