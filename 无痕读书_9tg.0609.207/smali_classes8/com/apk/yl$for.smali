.class public Lcom/apk/yl$for;
.super Lcom/apk/ol;
.source "SizeConfigStrategy.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/yl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/ol<",
        "Lcom/apk/yl$if;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/ol;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Lcom/apk/xl;
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/yl$if;

    invoke-direct {v0, p0}, Lcom/apk/yl$if;-><init>(Lcom/apk/yl$for;)V

    return-object v0
.end method

.method public new(ILandroid/graphics/Bitmap$Config;)Lcom/apk/yl$if;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/ol;->if()Lcom/apk/xl;

    move-result-object v0

    check-cast v0, Lcom/apk/yl$if;

    .line 2
    iput p1, v0, Lcom/apk/yl$if;->if:I

    .line 3
    iput-object p2, v0, Lcom/apk/yl$if;->for:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method
