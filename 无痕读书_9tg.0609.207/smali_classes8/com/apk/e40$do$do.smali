.class public Lcom/apk/e40$do$do;
.super Lcom/apk/a40;
.source "IndicatorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/e40$do;-><init>(Landroidx/fragment/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic case:Lcom/apk/e40$do;


# direct methods
.method public constructor <init>(Lcom/apk/e40$do;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/e40$do$do;->case:Lcom/apk/e40$do;

    invoke-direct {p0, p2}, Lcom/apk/a40;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/e40$do$do;->case:Lcom/apk/e40$do;

    invoke-virtual {v0}, Lcom/apk/e40$do;->do()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/e40$do$do;->case:Lcom/apk/e40$do;

    .line 3
    iget-boolean v1, v0, Lcom/apk/e40$do;->if:Z

    if-eqz v1, :cond_1

    const v0, 0x7fffff9b

    return v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/apk/e40$do;->do()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/e40$do$do;->case:Lcom/apk/e40$do;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public getPageWidth(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/e40$do$do;->case:Lcom/apk/e40$do;

    .line 2
    invoke-virtual {v0}, Lcom/apk/e40$do;->do()I

    move-result v0

    rem-int/2addr p1, v0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
