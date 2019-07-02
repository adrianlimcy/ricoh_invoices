line_items = LineItem.create([
    { description: 'Tuts+ Subscription April 2016', price: 15.0 },
    { description: 'Ruby eBook', price: 9.90} ])
Invoice.create(
    client: 'Pedro Alonso',
    total: 24.90,
    line_item: line_items,
    date: Date.new(2016, 4, 1),
    notes: 'This is a note')
