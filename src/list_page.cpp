#include <QVBoxLayout>
#include "list_page.h"
#include "utils.h"

#include "dimagebutton.h"

DWIDGET_USE_NAMESPACE

ListPage::ListPage(QWidget *parent) : QWidget(parent)
{
    layout = new QVBoxLayout();
    setLayout(layout);

    fileView = new FileView();
    recordButton = new DImageButton(
        Utils::getImagePath("record_small_normal.png"),
        Utils::getImagePath("record_small_hover.png"),
        Utils::getImagePath("record_small_press.png")
        );
    
    layout->addWidget(fileView, 0, Qt::AlignCenter);
    layout->addWidget(recordButton, 0, Qt::AlignCenter);
}
