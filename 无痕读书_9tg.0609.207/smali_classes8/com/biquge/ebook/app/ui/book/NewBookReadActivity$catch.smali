.class public final Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$catch;
.super Ljava/lang/Object;
.source "NewBookReadActivity.java"

# interfaces
.implements Lcom/apk/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a0(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/app/Activity;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Lcom/biquge/ebook/app/bean/CollectBook;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$catch;->do:Landroid/app/Activity;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$catch;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    iput-object p3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$catch;->for:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$catch;->do:Landroid/app/Activity;

    const-class v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$catch;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    const-string v1, "collectBook"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$catch;->for:Ljava/lang/String;

    const-string v1, "chapterId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$catch;->do:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$catch;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$catch;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$catch;->if:Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1

    :cond_1
    :goto_0
    return-void
.end method
