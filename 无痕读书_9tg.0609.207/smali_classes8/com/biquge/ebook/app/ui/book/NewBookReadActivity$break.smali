.class public Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$break;
.super Lcom/apk/yv;
.source "NewBookReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$break;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-direct {p0}, Lcom/apk/yv;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$break;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    const v1, 0x7f0901c2

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/widget/AppCheckBox;

    .line 2
    iput-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->j:Lcom/biquge/ebook/app/widget/AppCheckBox;

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$break;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 4
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->j:Lcom/biquge/ebook/app/widget/AppCheckBox;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$break;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 7
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->j:Lcom/biquge/ebook/app/widget/AppCheckBox;

    const v1, 0x7f10038f

    .line 8
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0905d1

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 10
    sget v2, Lcom/apk/zu;->do:I

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f100390

    .line 13
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
