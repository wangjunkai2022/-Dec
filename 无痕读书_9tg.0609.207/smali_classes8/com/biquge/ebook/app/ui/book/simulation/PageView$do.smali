.class public Lcom/biquge/ebook/app/ui/book/simulation/PageView$do;
.super Ljava/lang/Object;
.source "PageView.java"

# interfaces
.implements Lcom/apk/y9$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/book/simulation/PageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/simulation/PageView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/simulation/PageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView$do;->do:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView$do;->do:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->this:Z

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->catch:Lcom/biquge/ebook/app/ui/book/simulation/PageView$if;

    if-eqz p1, :cond_1

    .line 4
    check-cast p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$if;

    .line 5
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object v2

    .line 6
    iget-boolean v2, v2, Lcom/apk/n0;->extends:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 7
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$if;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 8
    invoke-virtual {p1, v3, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->F(ZZ)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    .line 9
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->new:Lcom/apk/h2;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/apk/h2;->L()Z

    move-result v1

    .line 11
    :cond_1
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->else:Z

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView$do;->do:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    .line 13
    iget-boolean p1, p1, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->else:Z

    return p1
.end method

.method public if(Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView$do;->do:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->this:Z

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->catch:Lcom/biquge/ebook/app/ui/book/simulation/PageView$if;

    if-eqz p1, :cond_1

    .line 4
    check-cast p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$if;

    .line 5
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object v2

    .line 6
    iget-boolean v2, v2, Lcom/apk/n0;->extends:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 7
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$if;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 8
    invoke-virtual {p1, v3, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->F(ZZ)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    .line 9
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->new:Lcom/apk/h2;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/apk/h2;->M()Z

    move-result v1

    .line 11
    :cond_1
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->goto:Z

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/simulation/PageView$do;->do:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    .line 13
    iget-boolean p1, p1, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->goto:Z

    return p1
.end method
