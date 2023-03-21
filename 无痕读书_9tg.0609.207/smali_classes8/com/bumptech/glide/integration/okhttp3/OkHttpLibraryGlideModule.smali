.class public final Lcom/bumptech/glide/integration/okhttp3/OkHttpLibraryGlideModule;
.super Lcom/apk/oq;
.source "OkHttpLibraryGlideModule.java"


# annotations
.annotation build Lcom/bumptech/glide/annotation/GlideModule;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/oq;-><init>()V

    return-void
.end method


# virtual methods
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
    const-class p1, Lcom/apk/rm;

    const-class p2, Ljava/io/InputStream;

    new-instance v0, Lcom/apk/aj$do;

    invoke-direct {v0}, Lcom/apk/aj$do;-><init>()V

    invoke-virtual {p3, p1, p2, v0}, Lcom/apk/oi;->this(Ljava/lang/Class;Ljava/lang/Class;Lcom/apk/zm;)Lcom/apk/oi;

    return-void
.end method
