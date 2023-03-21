.class public Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;
.super Ljava/lang/Object;
.source "NewBookReadActivity.java"

# interfaces
.implements Lcom/apk/e1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;
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
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized do()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->static:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 4
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->static:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 7
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->static:Ljava/util/List;

    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 10
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->static:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    .line 12
    monitor-exit p0

    return-void

    .line 13
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 14
    iget-boolean v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->public:Z

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 16
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/apk/h2;->continue(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class$do;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    .line 20
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class$if;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class$if;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 22
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->import:Lcom/apk/g0;

    if-eqz v0, :cond_3

    .line 23
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 24
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->import:Lcom/apk/g0;

    .line 25
    invoke-virtual {v0}, Lcom/apk/g0;->try()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized for(ZZ)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-boolean p2, p2, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->z:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->strictfp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    :try_start_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->v(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f10009b

    .line 6
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public if(Ljava/lang/String;I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->native:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 5
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->native:Ljava/lang/String;

    const/4 v0, 0x1

    .line 6
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 7
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->native:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 9
    iput-object p2, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->native:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->y(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->w(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    .line 2
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/apk/s0;->new:Z

    return-void
.end method
