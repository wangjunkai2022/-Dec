.class public final Lcom/apk/yl$if;
.super Ljava/lang/Object;
.source "SizeConfigStrategy.java"

# interfaces
.implements Lcom/apk/xl;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/yl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field public final do:Lcom/apk/yl$for;

.field public for:Landroid/graphics/Bitmap$Config;

.field public if:I


# direct methods
.method public constructor <init>(Lcom/apk/yl$for;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/yl$if;->do:Lcom/apk/yl$for;

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/yl$if;->do:Lcom/apk/yl$for;

    invoke-virtual {v0, p0}, Lcom/apk/ol;->for(Lcom/apk/xl;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/apk/yl$if;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/apk/yl$if;

    .line 3
    iget v0, p0, Lcom/apk/yl$if;->if:I

    iget v2, p1, Lcom/apk/yl$if;->if:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/apk/yl$if;->for:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lcom/apk/yl$if;->for:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1}, Lcom/apk/gs;->for(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/yl$if;->if:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/apk/yl$if;->for:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/yl$if;->if:I

    iget-object v1, p0, Lcom/apk/yl$if;->for:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcom/apk/yl;->goto(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
