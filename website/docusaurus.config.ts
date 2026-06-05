import {themes as prismThemes} from 'prism-react-renderer';
import type {Config} from '@docusaurus/types';
import type {Options as PresetOptions} from '@docusaurus/preset-classic';

const config: Config = {
  title: 'Linux School',
  tagline: 'Hands-on Linux command line training built for real terminal practice.',
  favicon: 'img/favicon.ico',

  url: 'https://m4ckdev.github.io',
  baseUrl: '/Linux-School/',

  organizationName: 'm4ckDev',
  projectName: 'Linux-School',

  onBrokenLinks: 'warn',
  onBrokenMarkdownLinks: 'warn',

  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },

  presets: [
    [
      'classic',
      {
        docs: {
          sidebarPath: './sidebars.ts',
          routeBasePath: 'docs',
        },
        blog: false,
        theme: {
          customCss: './src/css/custom.css',
        },
      } satisfies PresetOptions,
    ],
  ],

  themeConfig: {
    image: 'img/linux-school-social-card.jpg',
    navbar: {
      title: 'Linux School',
      logo: {
        alt: 'Linux School Logo',
        src: 'img/logo.svg',
      },
      items: [
        {
          type: 'docSidebar',
          sidebarId: 'courseSidebar',
          position: 'left',
          label: 'Course',
        },
        {
          to: '/docs/start-here',
          label: 'Start Here',
          position: 'left',
        },
        {
          to: '/docs/download-and-run',
          label: 'Download',
          position: 'left',
        },
        {
          href: 'https://github.com/m4ckDev/Linux-School',
          label: 'GitHub',
          position: 'right',
        },
      ],
    },
    footer: {
      style: 'dark',
      links: [
        {
          title: 'Learn',
          items: [
            {
              label: 'Start Here',
              to: '/docs/start-here',
            },
            {
              label: 'CLI Guide',
              to: '/docs/cli-guide',
            },
            {
              label: 'Module Roadmap',
              to: '/docs/modules',
            },
          ],
        },
        {
          title: 'Project',
          items: [
            {
              label: 'GitHub Repository',
              href: 'https://github.com/m4ckDev/Linux-School',
            },
            {
              label: 'Download and Run',
              to: '/docs/download-and-run',
            },
          ],
        },
      ],
      copyright: `Copyright © ${new Date().getFullYear()} Linux School. Built by m4ckDev.`,
    },
    prism: {
      theme: prismThemes.github,
      darkTheme: prismThemes.dracula,
    },
  },
};

export default config;
