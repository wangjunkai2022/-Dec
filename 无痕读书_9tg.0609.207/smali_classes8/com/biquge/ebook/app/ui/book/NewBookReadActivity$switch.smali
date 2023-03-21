.class public Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$switch;
.super Ljava/lang/Object;
.source "NewBookReadActivity.java"

# interfaces
.implements Lcom/manhua/ui/widget/PageRecyclerView$do;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->initView()V
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
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$switch;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$switch;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->x(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    return-void
.end method

.method public do(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$switch;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 3
    invoke-virtual {v0, p1}, Lcom/apk/h2;->E(I)V

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$switch;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 5
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 6
    invoke-virtual {p1}, Lcom/apk/h2;->this()V

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$switch;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 8
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v0, :cond_0

    .line 9
    iget-boolean p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->b:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 10
    invoke-virtual {v0, p1}, Lcom/apk/h2;->else(Z)V

    :cond_0
    return-void
.end method

.method public for(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$switch;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->public:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lcom/apk/h2;->return(I)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$switch;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 6
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 7
    invoke-virtual {v1, v0}, Lcom/apk/h2;->final(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$switch;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 9
    invoke-virtual {v2, v1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->E(Ljava/lang/String;Lcom/biquge/ebook/app/bean/BookChapter;)V

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$switch;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 11
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 12
    invoke-virtual {v0, p1}, Lcom/apk/h2;->E(I)V

    .line 13
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$switch;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 14
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Lcom/apk/h2;->else(Z)V

    :cond_0
    return-void
.end method

.method public if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$switch;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/apk/h2;->n(Z)V

    return-void
.end method

.method public new()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$switch;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/apk/h2;->o(Z)V

    return-void
.end method

.method public try()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$switch;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/apk/h2;->continue(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$switch;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->import()V

    :cond_0
    return-void
.end method
