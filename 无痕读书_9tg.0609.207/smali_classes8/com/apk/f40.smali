.class public Lcom/apk/f40;
.super Ljava/lang/Object;
.source "ColorBar.java"

# interfaces
.implements Lcom/apk/h40;


# instance fields
.field public case:I

.field public final do:Landroid/content/Context;

.field public final for:Lcom/apk/z30;

.field public if:Lcom/apk/h40$do;

.field public new:I

.field public try:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/h40$do;->for:Lcom/apk/h40$do;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Lcom/apk/z30;

    invoke-direct {v1, p1}, Lcom/apk/z30;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/apk/f40;->for:Lcom/apk/z30;

    .line 4
    iput-object p1, p0, Lcom/apk/f40;->do:Landroid/content/Context;

    .line 5
    iput p2, p0, Lcom/apk/f40;->new:I

    .line 6
    invoke-virtual {v1, p2}, Lcom/apk/z30;->setBgColor(I)V

    .line 7
    iget-object v1, p0, Lcom/apk/f40;->for:Lcom/apk/z30;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2}, Lcom/apk/tr0;->do(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    iput p3, p0, Lcom/apk/f40;->try:I

    .line 9
    iput-object v0, p0, Lcom/apk/f40;->if:Lcom/apk/h40$do;

    return-void
.end method


# virtual methods
.method public do()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/f40;->for:Lcom/apk/z30;

    iget-object v1, p0, Lcom/apk/f40;->do:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/apk/f40;->new:I

    invoke-static {v2}, Lcom/apk/tr0;->do(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public for(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/f40;->try:I

    if-nez v0, :cond_0

    return p1

    :cond_0
    return v0
.end method

.method public getGravity()Lcom/apk/h40$do;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/f40;->if:Lcom/apk/h40$do;

    return-object v0
.end method

.method public if()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/f40;->for:Lcom/apk/z30;

    return-object v0
.end method

.method public new(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/f40;->case:I

    if-nez v0, :cond_0

    return p1

    :cond_0
    return v0
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method
