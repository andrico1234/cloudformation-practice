import React from "react"
import { Link } from "gatsby"

import Layout from "../components/layout"
import SEO from "../components/seo"

const SecondPage = () => (
  <Layout>
    <h1>Leaderboard</h1>
    <p>The top players are...</p>
    <Link to="/">Go back to the homepage</Link>
  </Layout>
)

export default SecondPage
