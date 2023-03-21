.class public Lcom/apk/co$do;
.super Lcom/apk/co;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/co;-><init>()V

    return-void
.end method


# virtual methods
.method public do(IIII)Lcom/apk/co$try;
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apk/co$do;->if(IIII)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/apk/co$try;->if:Lcom/apk/co$try;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/apk/co;->do:Lcom/apk/co;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/apk/co;->do(IIII)Lcom/apk/co$try;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public if(IIII)F
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/co;->do:Lcom/apk/co;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/apk/co;->if(IIII)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 3
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method
