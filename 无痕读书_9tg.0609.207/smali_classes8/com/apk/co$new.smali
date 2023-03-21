.class public Lcom/apk/co$new;
.super Lcom/apk/co;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
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
    .locals 0

    .line 1
    sget-object p1, Lcom/apk/co$try;->if:Lcom/apk/co$try;

    return-object p1
.end method

.method public if(IIII)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
