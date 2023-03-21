.class public Lcom/apk/g40;
.super Ljava/lang/Object;
.source "DrawableBar.java"

# interfaces
.implements Lcom/apk/h40;


# instance fields
.field public do:Landroid/content/Context;

.field public for:Landroid/view/View;

.field public if:Lcom/apk/h40$do;

.field public new:I

.field public try:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/apk/h40$do;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2}, Lcom/apk/tr0;->do(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/apk/lq0;->for(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/apk/g40;->do:Landroid/content/Context;

    .line 4
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/apk/g40;->for:Landroid/view/View;

    .line 5
    iput-object v0, p0, Lcom/apk/g40;->try:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iput-object p3, p0, Lcom/apk/g40;->if:Lcom/apk/h40$do;

    .line 8
    iput p2, p0, Lcom/apk/g40;->new:I

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/g40;->do:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/apk/g40;->new:I

    invoke-static {v1}, Lcom/apk/tr0;->do(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/apk/lq0;->for(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/g40;->try:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v1, p0, Lcom/apk/g40;->for:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public for(I)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/g40;->try:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    return p1
.end method

.method public getGravity()Lcom/apk/h40$do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/g40;->if:Lcom/apk/h40$do;

    return-object v0
.end method

.method public if()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/g40;->for:Landroid/view/View;

    return-object v0
.end method

.method public new(I)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/g40;->try:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    return p1
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method
