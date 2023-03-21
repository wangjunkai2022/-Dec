.class public Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg$do;
.super Lcom/apk/bg;
.source "LieBianBottomShareDlg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg$do;->do:Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "com.tencent.mm"

    const/4 v2, 0x3

    const v3, 0x7f0904d9

    if-ne v0, v3, :cond_1

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg$do;->do:Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->do:Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg$if;

    if-eqz p1, :cond_5

    .line 4
    check-cast p1, Lcom/apk/w0$if;

    .line 5
    invoke-static {v1}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p1, Lcom/apk/w0$if;->do:Landroid/app/Activity;

    iget-object p1, p1, Lcom/apk/w0$if;->if:Landroid/view/View;

    invoke-static {v0, p1, v2}, Lcom/apk/w0;->do(Landroid/app/Activity;Landroid/view/View;I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p1, Lcom/apk/w0$if;->do:Landroid/app/Activity;

    iget-object p1, p1, Lcom/apk/w0$if;->if:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/apk/w0;->do(Landroid/app/Activity;Landroid/view/View;I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0904da

    if-ne v0, v3, :cond_3

    .line 9
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg$do;->do:Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;

    .line 10
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->do:Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg$if;

    if-eqz p1, :cond_5

    .line 11
    check-cast p1, Lcom/apk/w0$if;

    .line 12
    invoke-static {v1}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p1, Lcom/apk/w0$if;->do:Landroid/app/Activity;

    iget-object p1, p1, Lcom/apk/w0$if;->if:Landroid/view/View;

    invoke-static {v0, p1, v2}, Lcom/apk/w0;->do(Landroid/app/Activity;Landroid/view/View;I)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p1, Lcom/apk/w0$if;->do:Landroid/app/Activity;

    iget-object p1, p1, Lcom/apk/w0$if;->if:Landroid/view/View;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/apk/w0;->do(Landroid/app/Activity;Landroid/view/View;I)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904d8

    if-ne v0, v1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg$do;->do:Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;

    .line 17
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->do:Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg$if;

    if-eqz p1, :cond_5

    .line 18
    check-cast p1, Lcom/apk/w0$if;

    .line 19
    iget-object v0, p1, Lcom/apk/w0$if;->do:Landroid/app/Activity;

    iget-object p1, p1, Lcom/apk/w0$if;->if:Landroid/view/View;

    invoke-static {v0, p1, v2}, Lcom/apk/w0;->do(Landroid/app/Activity;Landroid/view/View;I)V

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0904db

    if-ne p1, v0, :cond_5

    .line 21
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg$do;->do:Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;

    .line 22
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->do:Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg$if;

    if-eqz p1, :cond_5

    .line 23
    check-cast p1, Lcom/apk/w0$if;

    .line 24
    iget-object v0, p1, Lcom/apk/w0$if;->do:Landroid/app/Activity;

    iget-object p1, p1, Lcom/apk/w0$if;->if:Landroid/view/View;

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lcom/apk/w0;->do(Landroid/app/Activity;Landroid/view/View;I)V

    .line 25
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg$do;->do:Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    return-void
.end method
