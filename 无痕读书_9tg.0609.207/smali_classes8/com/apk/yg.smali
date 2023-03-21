.class public Lcom/apk/yg;
.super Landroid/widget/PopupWindow;
.source "SelectAndRemovePopView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public do:Landroid/widget/Button;

.field public for:Landroid/widget/Button;

.field public if:Landroid/widget/Button;

.field public new:Lcom/apk/bg;

.field public try:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/bg;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/yg;->try:Z

    .line 3
    iput-object p2, p0, Lcom/apk/yg;->new:Lcom/apk/bg;

    const p2, 0x7f0c01c4

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p2, -0x1

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 p2, -0x2

    .line 7
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 10
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f1102c8

    .line 11
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const p2, 0x7f0901ec

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/apk/yg;->do:Landroid/widget/Button;

    .line 13
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901e9

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/apk/yg;->if:Landroid/widget/Button;

    .line 15
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901ea

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/apk/yg;->for:Landroid/widget/Button;

    .line 17
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public do(II)V
    .locals 5

    const v0, 0x7f1001d0

    if-lez p1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/apk/yg;->if:Landroid/widget/Button;

    const v2, 0x7f100193

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/apk/yg;->do:Landroid/widget/Button;

    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/apk/yg;->if:Landroid/widget/Button;

    const v1, 0x7f100192

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/apk/yg;->do:Landroid/widget/Button;

    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-lez p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/apk/yg;->do:Landroid/widget/Button;

    const p2, 0x7f10018f

    invoke-static {p2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apk/yg;->try:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/yg;->new:Lcom/apk/bg;

    invoke-virtual {v0, p1}, Lcom/apk/bg;->onClick(Landroid/view/View;)V

    return-void
.end method
