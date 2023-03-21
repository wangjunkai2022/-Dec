.class public final Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;
.super Lcom/bumptech/glide/GeneratedAppGlideModule;
.source "GeneratedAppGlideModuleImpl.java"


# instance fields
.field public final do:Lcom/manhua/utils/image/DesGlideModule;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/GeneratedAppGlideModule;-><init>()V

    .line 2
    new-instance p1, Lcom/manhua/utils/image/DesGlideModule;

    invoke-direct {p1}, Lcom/manhua/utils/image/DesGlideModule;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->do:Lcom/manhua/utils/image/DesGlideModule;

    const-string p1, "Glide"

    const/4 v0, 0x3

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return-void
.end method


# virtual methods
.method public do(Landroid/content/Context;Lcom/apk/ji;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/ji;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->do:Lcom/manhua/utils/image/DesGlideModule;

    invoke-virtual {v0, p1, p2}, Lcom/manhua/utils/image/DesGlideModule;->do(Landroid/content/Context;Lcom/apk/ji;)V

    return-void
.end method

.method public if(Landroid/content/Context;Lcom/apk/ii;Lcom/apk/oi;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/ii;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/apk/oi;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/bumptech/glide/integration/okhttp3/OkHttpLibraryGlideModule;

    invoke-direct {v0}, Lcom/bumptech/glide/integration/okhttp3/OkHttpLibraryGlideModule;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/integration/okhttp3/OkHttpLibraryGlideModule;->if(Landroid/content/Context;Lcom/apk/ii;Lcom/apk/oi;)V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->do:Lcom/manhua/utils/image/DesGlideModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/manhua/utils/image/DesGlideModule;->if(Landroid/content/Context;Lcom/apk/ii;Lcom/apk/oi;)V

    return-void
.end method
