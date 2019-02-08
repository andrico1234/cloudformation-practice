import React from "react"
import { Link } from "gatsby"

import Layout from "../components/layout"
import SEO from "../components/seo"

const IndexPage = () => (
  <Layout>
    <div>
      This is where the input is going to be
    </div>
    <Link to="/leaderboard/">Go to leaderboard</Link>
  </Layout>
)

export default IndexPage
