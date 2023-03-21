.class public Lcom/apk/nt;
.super Ljava/lang/Object;
.source "PopCommon.java"

# interfaces
.implements Lcom/apk/lt$do;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/nt$do;
    }
.end annotation


# instance fields
.field public case:Landroid/widget/ListView;

.field public do:Lcom/apk/lt;

.field public else:Landroid/widget/ImageView;

.field public for:Z

.field public if:Lcom/apk/nt$do;

.field public new:Lcom/apk/ht;

.field public try:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/apk/nt$do;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/apk/ot;",
            ">;",
            "Lcom/apk/nt$do;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/apk/nt;->if:Lcom/apk/nt$do;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/codelibrary/R$layout;->pop_popwindow_layout:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/apk/nt;->try:Landroid/view/View;

    .line 4
    sget v0, Lcom/codelibrary/R$id;->pop_list_layout:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    .line 5
    iget-object v0, p0, Lcom/apk/nt;->try:Landroid/view/View;

    sget v1, Lcom/codelibrary/R$id;->pop_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/apk/nt;->case:Landroid/widget/ListView;

    .line 6
    iget-object v0, p0, Lcom/apk/nt;->try:Landroid/view/View;

    sget v1, Lcom/codelibrary/R$id;->pop_top_tag_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/apk/nt;->else:Landroid/widget/ImageView;

    if-eqz p4, :cond_0

    .line 7
    sget v0, Lcom/codelibrary/R$drawable;->shape_popview_bg_black:I

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 8
    iget-object p3, p0, Lcom/apk/nt;->else:Landroid/widget/ImageView;

    sget v0, Lcom/codelibrary/R$drawable;->shape_triangle_black:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 9
    :cond_0
    sget v0, Lcom/codelibrary/R$drawable;->shape_popview_bg_white:I

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 10
    iget-object p3, p0, Lcom/apk/nt;->else:Landroid/widget/ImageView;

    sget v0, Lcom/codelibrary/R$drawable;->shape_triangle_white:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    :goto_0
    iget-object p3, p0, Lcom/apk/nt;->case:Landroid/widget/ListView;

    new-instance v0, Lcom/apk/mt;

    invoke-direct {v0, p0}, Lcom/apk/mt;-><init>(Lcom/apk/nt;)V

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 12
    new-instance p3, Lcom/apk/ht;

    invoke-direct {p3, p2, p4, p5}, Lcom/apk/ht;-><init>(Ljava/util/List;ZZ)V

    iput-object p3, p0, Lcom/apk/nt;->new:Lcom/apk/ht;

    .line 13
    iget-object p2, p0, Lcom/apk/nt;->case:Landroid/widget/ListView;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 14
    new-instance p2, Lcom/apk/lt;

    iget-object p3, p0, Lcom/apk/nt;->try:Landroid/view/View;

    invoke-direct {p2, p1, p3, p0}, Lcom/apk/lt;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/apk/lt$do;)V

    iput-object p2, p0, Lcom/apk/nt;->do:Lcom/apk/lt;

    return-void
.end method


# virtual methods
.method public do(I)V
    .locals 4

    if-eqz p1, :cond_4

    .line 1
    :try_start_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v1, 0x3

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x41700000    # 15.0f

    if-eq p1, v1, :cond_2

    const v1, 0x800003

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const v1, 0x800005

    if-ne p1, v1, :cond_3

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/apk/nt;->try:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v3

    add-float/2addr p1, v2

    float-to-int p1, p1

    .line 5
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/apk/nt;->try:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v3

    add-float/2addr p1, v2

    float-to-int p1, p1

    .line 8
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 9
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/apk/nt;->else:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method public for(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/apk/nt;->do:Lcom/apk/lt;

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v1, p0, Lcom/apk/nt;->for:Z

    .line 3
    iput-boolean v1, v0, Lcom/apk/lt;->for:Z

    .line 4
    iget-object v1, v0, Lcom/apk/lt;->if:Landroid/widget/PopupWindow;

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object p1, v0, Lcom/apk/lt;->if:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 7
    iget-object p1, v0, Lcom/apk/lt;->if:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 8
    :cond_2
    iget-boolean v1, v0, Lcom/apk/lt;->for:Z

    if-eqz v1, :cond_3

    .line 9
    iget v1, v0, Lcom/apk/lt;->new:F

    invoke-virtual {v0, v1}, Lcom/apk/lt;->do(F)V

    .line 10
    :cond_3
    iget-object v1, v0, Lcom/apk/lt;->if:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 11
    iget-object v1, v0, Lcom/apk/lt;->if:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 12
    iget-object p1, v0, Lcom/apk/lt;->if:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->update()V

    :cond_4
    :goto_0
    return-void
.end method

.method public if(I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2
    iget-object p1, p0, Lcom/apk/nt;->case:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
