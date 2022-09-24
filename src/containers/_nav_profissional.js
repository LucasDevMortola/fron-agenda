export default [
    {
      _name: "CSidebarNav",
      _children: [
        {
          _name: "CSidebarNavDropdown",
          name: "Calendario",
          route: "/calendario",
          icon: "cil-calendar",
          items: [
            {
              name: "Listagem",
              to: "/calendario/listar",
            },
          ],
        },
        {
          _name: "CSidebarNavDropdown",
          name: "Consulta",
          route: "/arbitragem",
          icon: "cil-flag-alt",
          items: [
            {
              name: "Listagem",
              to: "/consultas",
            }
          ],
        },
        {
          _name: "CSidebarNavDropdown",
          name: "Salas",
          route: "/salas",
          icon: "cil-calendar",
          items: [
            {
              name: "Listagem",
              to: "/salas",
            },
          ],
        },
      ],
    },
  ];
  