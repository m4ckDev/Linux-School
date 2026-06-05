import React from 'react';
import Link from '@docusaurus/Link';
import Layout from '@theme/Layout';

const modules = [
  ['00', 'Getting Started', 'Terminal basics and safe setup'],
  ['01', 'Navigation', 'Move around the Linux filesystem'],
  ['02', 'Files and Directories', 'Create, move, copy, and remove files'],
  ['03', 'Users and Permissions', 'Users, groups, chmod, chown, and stat'],
  ['04', 'Processes and Services', 'ps, top, kill, systemctl, and journalctl'],
  ['05', 'Package Management', 'Install, update, and inspect packages'],
];

function Feature({title, text}: {title: string; text: string}) {
  return (
    <div className="featureCard">
      <h3>{title}</h3>
      <p>{text}</p>
    </div>
  );
}

export default function Home(): JSX.Element {
  return (
    <Layout
      title="Linux School"
      description="Hands-on Linux CLI training for beginners, cybersecurity students, and homelab builders.">
      <main>
        <section className="heroSection">
          <div className="heroContent">
            <div className="eyebrow">Hands-On Linux CLI Training</div>
            <h1>Learn Linux by actually using the terminal.</h1>
            <p className="heroText">
              Linux School is a structured command line course with lessons, practice files,
              labs, challenges, quizzes, and a local CLI launcher.
            </p>
            <div className="buttonRow">
              <Link className="button button--primary button--lg" to="/docs/start-here">
                Start Learning
              </Link>
              <Link className="button button--secondary button--lg" to="/docs/download-and-run">
                Download and Run Locally
              </Link>
            </div>
            <pre className="terminalBox">
{`git clone https://github.com/m4ckDev/Linux-School.git
cd Linux-School
bash tools/linux-school.sh`}
            </pre>
          </div>
        </section>

        <section className="section">
          <div className="sectionHeader">
            <h2>Three ways to learn</h2>
            <p>Website for browsing. GitHub for source. CLI for hands-on training.</p>
          </div>
          <div className="featureGrid">
            <Feature title="Website Portal" text="Browse the roadmap, setup guide, and learning path from a clean course website." />
            <Feature title="GitHub Repository" text="Download the full course, review files, track changes, and contribute later." />
            <Feature title="CLI Classroom" text="Run Linux School directly from your terminal and open lessons, labs, and quizzes locally." />
          </div>
        </section>

        <section className="section darkPanel">
          <div className="sectionHeader">
            <h2>Module Roadmap</h2>
            <p>Start at Module 00 and build skill one layer at a time.</p>
          </div>
          <div className="moduleGrid">
            {modules.map(([num, title, text]) => (
              <div className="moduleCard" key={num}>
                <span className="moduleNumber">Module {num}</span>
                <h3>{title}</h3>
                <p>{text}</p>
              </div>
            ))}
          </div>
          <div className="centerButton">
            <Link className="button button--primary" to="/docs/modules">
              View Full Roadmap
            </Link>
          </div>
        </section>

        <section className="section">
          <div className="sectionHeader">
            <h2>Built for real practice</h2>
            <p>Each module follows the same training pattern.</p>
          </div>
          <div className="flow">
            <span>Overview</span>
            <span>Lesson</span>
            <span>Practice</span>
            <span>Lab</span>
            <span>Challenge</span>
            <span>Quiz</span>
          </div>
        </section>
      </main>
    </Layout>
  );
}
