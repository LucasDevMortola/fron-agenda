export default [
  {
    _name: "CSidebarNav",
    _children: [
      {
        _name: "CSidebarNavDropdown",
        name: "Agenda",
        route: "/agenda",
        icon: "cil-calendar",
        items: [
          {
            name: "Listagem",
            to: "/agenda",
          },
        ],
      },
      {
        _name: "CSidebarNavDropdown",
        name: "Clientes",
        route: "/clientes",
        icon: "cil-bank",
        items: [
          {
            name: "Listagem",
            to: "/clientes",
          },
        ],
      },
      {
        _name: "CSidebarNavDropdown",
        name: "Profissionais",
        route: "/profissional",
        icon: "cil-calendar",
        items: [
          {
            name: "Listagem",
            to: "/profissional",
          },
        ],
      }
    ],
  },
];
