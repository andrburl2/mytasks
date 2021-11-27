projects = Project.create([{ title: 'Семья' }, { title: 'Работа' }, {title: 'Прочее'} ])

Todo.create([
  { text: 'Купить молоко', isCompleted: false, project: projects.first },
  { text: 'Заменить масло в двигателе до 23 апреля', isCompleted: false, project: projects.first },
  { text: 'Отправить письмо бабушке', isCompleted: true, project: projects.first },
  { text: 'Заплатить за квартиру', isCompleted: false, project: projects.first },
  { text: 'Забрать обувь из ремонта', isCompleted: false, project: projects.first },
])

Todo.create([
  { text: 'Позвонить заказчику', isCompleted: true, project: projects.second },
  { text: 'Отправить документы', isCompleted: true, project: projects.second },
  { text: 'Заполнить отчет', isCompleted: false, project: projects.second },
])

Todo.create([
  { text: 'Позвонить другу', isCompleted: false, project: projects.third },
  { text: 'Подготовиться к поездке', isCompleted: false, project: projects.third },
])
