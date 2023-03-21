.class public Lcom/apk/yp0$do;
.super Landroid/os/AsyncTask;
.source "SkinCompatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/yp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/yp0$if;

.field public final synthetic for:Lcom/apk/yp0;

.field public final if:Lcom/apk/yp0$for;


# direct methods
.method public constructor <init>(Lcom/apk/yp0;Lcom/apk/yp0$if;Lcom/apk/yp0$for;)V
    .locals 0
    .param p1    # Lcom/apk/yp0;
        .annotation build Lskin/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/apk/yp0$if;
        .annotation build Lskin/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/apk/yp0$do;->for:Lcom/apk/yp0;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/apk/yp0$do;->do:Lcom/apk/yp0$if;

    .line 3
    iput-object p3, p0, Lcom/apk/yp0$do;->if:Lcom/apk/yp0$for;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, [Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/apk/yp0$do;->for:Lcom/apk/yp0;

    .line 3
    iget-object v0, v0, Lcom/apk/yp0;->if:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 5
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/apk/yp0$do;->for:Lcom/apk/yp0;

    .line 6
    iget-boolean v1, v1, Lcom/apk/yp0;->new:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 7
    :try_start_1
    iget-object v1, p0, Lcom/apk/yp0$do;->for:Lcom/apk/yp0;

    .line 8
    iget-object v1, v1, Lcom/apk/yp0;->if:Ljava/lang/Object;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/apk/yp0$do;->for:Lcom/apk/yp0;

    const/4 v2, 0x1

    .line 12
    iput-boolean v2, v1, Lcom/apk/yp0;->new:Z

    .line 13
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :try_start_3
    array-length v0, p1

    if-ne v0, v2, :cond_2

    .line 15
    iget-object v0, p0, Lcom/apk/yp0$do;->if:Lcom/apk/yp0$for;

    iget-object v1, p0, Lcom/apk/yp0$do;->for:Lcom/apk/yp0;

    .line 16
    iget-object v1, v1, Lcom/apk/yp0;->for:Landroid/content/Context;

    const/4 v2, 0x0

    .line 17
    aget-object v3, p1, v2

    invoke-interface {v0, v1, v3}, Lcom/apk/yp0$for;->new(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-static {}, Lcom/apk/lq0;->new()Lcom/apk/lq0;

    move-result-object p1

    iget-object v0, p0, Lcom/apk/yp0$do;->if:Lcom/apk/yp0$for;

    invoke-virtual {p1, v0}, Lcom/apk/lq0;->else(Lcom/apk/yp0$for;)V

    const-string p1, ""

    goto :goto_1

    .line 20
    :cond_1
    aget-object p1, p1, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :cond_2
    invoke-static {}, Lcom/apk/lq0;->new()Lcom/apk/lq0;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 23
    sget-object v1, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    .line 24
    iget-object v1, v1, Lcom/apk/yp0;->goto:Landroid/util/SparseArray;

    const/4 v2, -0x1

    .line 25
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/yp0$for;

    invoke-virtual {p1, v1}, Lcom/apk/lq0;->else(Lcom/apk/yp0$for;)V

    move-object p1, v0

    :goto_1
    return-object p1

    .line 26
    :cond_3
    throw v0

    :catchall_0
    move-exception p1

    .line 27
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/apk/yp0$do;->for:Lcom/apk/yp0;

    .line 3
    iget-object v0, v0, Lcom/apk/yp0;->if:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 5
    :try_start_0
    sget-object v3, Lcom/apk/kr0;->new:Lcom/apk/kr0;

    .line 6
    iget-object v4, v3, Lcom/apk/kr0;->for:Landroid/content/SharedPreferences$Editor;

    const-string v5, "skin-name"

    invoke-interface {v4, v5, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    iget-object p1, p0, Lcom/apk/yp0$do;->if:Lcom/apk/yp0$for;

    invoke-interface {p1}, Lcom/apk/yp0$for;->getType()I

    move-result p1

    .line 8
    iget-object v4, v3, Lcom/apk/kr0;->for:Landroid/content/SharedPreferences$Editor;

    const-string v5, "skin-strategy"

    invoke-interface {v4, v5, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9
    iget-object p1, v3, Lcom/apk/kr0;->for:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10
    iget-object p1, p0, Lcom/apk/yp0$do;->for:Lcom/apk/yp0;

    .line 11
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    iget-object v3, p1, Lcom/apk/hr0;->do:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/apk/hr0;->do:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/apk/ir0;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/apk/ir0;

    .line 13
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    array-length v4, v3

    :goto_0
    add-int/2addr v4, v1

    if-ltz v4, :cond_0

    .line 15
    aget-object v5, v3, v4

    invoke-interface {v5, p1, v2}, Lcom/apk/ir0;->do(Lcom/apk/hr0;Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/apk/yp0$do;->do:Lcom/apk/yp0$if;

    if-eqz p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/apk/yp0$do;->do:Lcom/apk/yp0$if;

    check-cast p1, Lcom/apk/l8;

    if-eqz p1, :cond_1

    .line 18
    sget-object p1, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const/4 v1, 0x1

    .line 19
    invoke-virtual {p1, v1}, Lcom/biquge/ebook/app/app/AppContext;->for(Z)V

    goto :goto_1

    .line 20
    :cond_1
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_0
    move-exception v1

    .line 21
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 22
    :cond_2
    sget-object p1, Lcom/apk/kr0;->new:Lcom/apk/kr0;

    const-string v3, ""

    .line 23
    iget-object v4, p1, Lcom/apk/kr0;->for:Landroid/content/SharedPreferences$Editor;

    const-string v5, "skin-name"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    iget-object v3, p1, Lcom/apk/kr0;->for:Landroid/content/SharedPreferences$Editor;

    const-string v4, "skin-strategy"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 25
    iget-object p1, p1, Lcom/apk/kr0;->for:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    iget-object p1, p0, Lcom/apk/yp0$do;->do:Lcom/apk/yp0$if;

    if-eqz p1, :cond_4

    .line 27
    iget-object p1, p0, Lcom/apk/yp0$do;->do:Lcom/apk/yp0$if;

    check-cast p1, Lcom/apk/l8;

    if-eqz p1, :cond_3

    goto :goto_1

    .line 28
    :cond_3
    throw v2

    .line 29
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/apk/yp0$do;->for:Lcom/apk/yp0;

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p1, Lcom/apk/yp0;->new:Z

    .line 31
    iget-object p1, p0, Lcom/apk/yp0$do;->for:Lcom/apk/yp0;

    .line 32
    iget-object p1, p1, Lcom/apk/yp0;->if:Ljava/lang/Object;

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 34
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public onPreExecute()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/yp0$do;->do:Lcom/apk/yp0$if;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/apk/l8;

    .line 3
    iget-object v1, v0, Lcom/apk/l8;->if:Lcom/biquge/ebook/app/ui/activity/SetActivity;

    .line 4
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/activity/SetActivity;->do:Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;

    const/16 v2, 0x8

    .line 5
    iget-boolean v0, v0, Lcom/apk/l8;->do:Z

    invoke-virtual {v1, v2, v0}, Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;->for(IZ)V

    :cond_0
    return-void
.end method
