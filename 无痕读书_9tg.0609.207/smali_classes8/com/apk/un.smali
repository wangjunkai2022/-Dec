.class public final Lcom/apk/un;
.super Lcom/apk/pn;
.source "BitmapImageDecoderResourceDecoder.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1c
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/pn<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final if:Lcom/apk/pl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/pn;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/ql;

    invoke-direct {v0}, Lcom/apk/ql;-><init>()V

    iput-object v0, p0, Lcom/apk/un;->if:Lcom/apk/pl;

    return-void
.end method
