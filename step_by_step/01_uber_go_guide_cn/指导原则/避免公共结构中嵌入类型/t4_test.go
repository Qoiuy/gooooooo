package 避免公共结构中嵌入类型

type Entity struct{}

// 抽象的列表
type AbstractList struct{}

func (l *AbstractList) Add(e Entity)    {}
func (l *AbstractList) Remove(e Entity) {}

//BadCode
type BadConcreteList struct {
	*AbstractList
}

// GoodCode
type GoodConcreteList struct {
	list *AbstractList
}

// 添加将实体添加到列表中
func (l *GoodConcreteList) Add(e Entity) {
	l.list.Add(e)
}

// 移除从列表中移除实体
func (l *GoodConcreteList) Remove(e Entity) {
	l.list.Remove(e)
}

type AbstractList1 interface {
	Add(Entity)
	Remove(Entity)
}
type ConcreteList struct {
	AbstractList1 //泄漏了具体List 抽象实现的细节?
}
type ConcreteList2 struct {
	list AbstractList1
}

func (l *ConcreteList2) Add(e Entity) {
	l.list.Add(e)
}

func (l *ConcreteList2) Remove(e Entity) {
	l.list.Remove(e)
}
