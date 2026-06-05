import type {SidebarsConfig} from '@docusaurus/plugin-content-docs';

const sidebars: SidebarsConfig = {
  courseSidebar: [
    'start-here',
    'download-and-run',
    'cli-guide',
    {
      type: 'category',
      label: 'Modules',
      items: [
        'modules/index',
        'modules/module-00',
        'modules/module-01',
        'modules/module-02',
        'modules/module-03',
        'modules/module-04',
        'modules/module-05',
        'modules/module-06',
        'modules/module-07',
        'modules/module-08',
        'modules/module-09',
        'modules/module-10',
        'modules/module-11',
        'modules/module-12',
      ],
    },
  ],
};

export default sidebars;
