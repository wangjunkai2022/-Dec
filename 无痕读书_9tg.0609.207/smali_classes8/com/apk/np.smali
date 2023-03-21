.class public final Lcom/apk/np;
.super Ljava/lang/Object;
.source "GifOptions.java"


# static fields
.field public static final do:Lcom/apk/lj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/lj<",
            "Lcom/apk/ej;",
            ">;"
        }
    .end annotation
.end field

.field public static final if:Lcom/apk/lj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/lj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/ej;->for:Lcom/apk/ej;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    .line 2
    invoke-static {v1, v0}, Lcom/apk/lj;->do(Ljava/lang/String;Ljava/lang/Object;)Lcom/apk/lj;

    move-result-object v0

    sput-object v0, Lcom/apk/np;->do:Lcom/apk/lj;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    invoke-static {v1, v0}, Lcom/apk/lj;->do(Ljava/lang/String;Ljava/lang/Object;)Lcom/apk/lj;

    move-result-object v0

    sput-object v0, Lcom/apk/np;->if:Lcom/apk/lj;

    return-void
.end method
