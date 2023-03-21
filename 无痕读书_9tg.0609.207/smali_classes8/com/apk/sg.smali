.class public Lcom/apk/sg;
.super Lcom/apk/xr0;
.source "PageIndicatorView.java"


# instance fields
.field public case:I

.field public for:I

.field public if:Landroid/content/Context;

.field public new:I

.field public try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/ec0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v1, v0}, Lcom/apk/xr0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iput-object v1, p0, Lcom/apk/sg;->if:Landroid/content/Context;

    const/4 v2, 0x7

    .line 3
    iput v2, p0, Lcom/apk/sg;->for:I

    const/4 v2, 0x4

    .line 4
    iput v2, p0, Lcom/apk/sg;->new:I

    .line 5
    iput-object v1, p0, Lcom/apk/sg;->try:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcom/apk/sg;->if:Landroid/content/Context;

    const/16 p1, 0x11

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 9
    iget p1, p0, Lcom/apk/sg;->for:I

    int-to-float p1, p1

    invoke-static {p1}, Lcom/apk/eg;->catch(F)I

    move-result p1

    iput p1, p0, Lcom/apk/sg;->for:I

    .line 10
    iget p1, p0, Lcom/apk/sg;->new:I

    int-to-float p1, p1

    invoke-static {p1}, Lcom/apk/eg;->catch(F)I

    move-result p1

    iput p1, p0, Lcom/apk/sg;->new:I

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/xr0;->do()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/sg;->try:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/apk/sg;->case:I

    iget-object v1, p0, Lcom/apk/sg;->try:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/sg;->try:Ljava/util/List;

    iget v1, p0, Lcom/apk/sg;->case:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/ec0;

    const v1, 0x7f080321

    invoke-virtual {v0, v1}, Lcom/apk/ec0;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public for(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/sg;->try:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apk/sg;->try:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 5
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/apk/sg;->for:I

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6
    iget v1, p0, Lcom/apk/sg;->new:I

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_1

    .line 7
    new-instance v3, Lcom/apk/ec0;

    iget-object v4, p0, Lcom/apk/sg;->if:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/apk/ec0;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080326

    .line 8
    invoke-virtual {v3, v4}, Lcom/apk/ec0;->setImageResource(I)V

    .line 9
    invoke-virtual {p0, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v4, p0, Lcom/apk/sg;->try:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/apk/sg;->try:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/apk/sg;->try:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/ec0;

    const v0, 0x7f080321

    invoke-virtual {p1, v0}, Lcom/apk/ec0;->setImageResource(I)V

    :cond_2
    return-void
.end method

.method public setSelectedPage(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/apk/sg;->case:I

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/apk/sg;->try:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/apk/sg;->try:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/ec0;

    const v2, 0x7f080321

    invoke-virtual {v1, v2}, Lcom/apk/ec0;->setImageResource(I)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/apk/sg;->try:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/ec0;

    const v2, 0x7f080326

    invoke-virtual {v1, v2}, Lcom/apk/ec0;->setImageResource(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
