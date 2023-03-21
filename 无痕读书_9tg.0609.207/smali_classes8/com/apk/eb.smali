.class public Lcom/apk/eb;
.super Lcom/apk/bg;
.source "BookShelfFragment.java"


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/eb;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901ec

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/eb;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->this:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->if(Z)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/apk/eb;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->while:Lcom/apk/yg;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1, p1}, Lcom/apk/yg;->do(II)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901e9

    if-ne v0, v1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/apk/eb;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->this:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->do()Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->r(Ljava/util/List;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901ea

    if-ne p1, v0, :cond_2

    .line 12
    iget-object p1, p0, Lcom/apk/eb;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->this:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->do()Ljava/util/List;

    move-result-object p1

    .line 14
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/apk/eb;->do:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    .line 16
    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    iget-boolean v2, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->for:Z

    iget-boolean v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->new:Z

    const-string v3, ""

    invoke-static {v1, p1, v3, v2, v0}, Lcom/biquge/ebook/app/ui/activity/CreateBookGroupActivity;->m(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;ZZ)V

    :cond_2
    :goto_0
    return-void
.end method
