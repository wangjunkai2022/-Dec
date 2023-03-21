.class public final Lcom/apk/pm$if;
.super Ljava/lang/Object;
.source "DataUrlLoader.java"

# interfaces
.implements Lcom/apk/uj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/pm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/uj<",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final do:Ljava/lang/String;

.field public for:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TData;"
        }
    .end annotation
.end field

.field public final if:Lcom/apk/pm$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/pm$do<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/apk/pm$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/apk/pm$do<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/pm$if;->do:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/apk/pm$if;->if:Lcom/apk/pm$do;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public case(Lcom/apk/ni;Lcom/apk/uj$do;)V
    .locals 1
    .param p1    # Lcom/apk/ni;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/uj$do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ni;",
            "Lcom/apk/uj$do<",
            "-TData;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/apk/pm$if;->if:Lcom/apk/pm$do;

    iget-object v0, p0, Lcom/apk/pm$if;->do:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p1, Lcom/apk/pm$for$do;

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/apk/pm$for$do;->do(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/pm$if;->for:Ljava/lang/Object;

    .line 2
    invoke-interface {p2, p1}, Lcom/apk/uj$do;->new(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-interface {p2, p1}, Lcom/apk/uj$do;->for(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public do()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/pm$if;->if:Lcom/apk/pm$do;

    check-cast v0, Lcom/apk/pm$for$do;

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Ljava/io/InputStream;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public if()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/pm$if;->if:Lcom/apk/pm$do;

    iget-object v1, p0, Lcom/apk/pm$if;->for:Ljava/lang/Object;

    check-cast v0, Lcom/apk/pm$for$do;

    if-eqz v0, :cond_0

    .line 2
    check-cast v1, Ljava/io/InputStream;

    .line 3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public try()Lcom/apk/dj;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/dj;->do:Lcom/apk/dj;

    return-object v0
.end method
