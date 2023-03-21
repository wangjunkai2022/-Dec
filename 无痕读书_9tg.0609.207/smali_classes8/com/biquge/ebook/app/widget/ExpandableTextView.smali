.class public Lcom/biquge/ebook/app/widget/ExpandableTextView;
.super Landroid/widget/FrameLayout;
.source "ExpandableTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/widget/ExpandableTextView$new;,
        Lcom/biquge/ebook/app/widget/ExpandableTextView$for;
    }
.end annotation


# instance fields
.field public break:Landroid/graphics/drawable/Drawable;

.field public case:I

.field public catch:I

.field public class:F

.field public const:Z

.field public do:Landroid/widget/TextView;

.field public else:I

.field public final:Lcom/biquge/ebook/app/widget/ExpandableTextView$new;

.field public for:Z

.field public goto:I

.field public if:Landroid/widget/ImageButton;

.field public new:Z

.field public this:Landroid/graphics/drawable/Drawable;

.field public try:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/biquge/ebook/app/widget/ExpandableTextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->new:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/biquge/ebook/app/R$styleable;->ExpandableTextView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->else:I

    const/16 v0, 0x12c

    .line 5
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->catch:I

    const/4 p1, 0x0

    const v0, 0x3f333333    # 0.7f

    .line 6
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->class:F

    const/4 p1, 0x3

    .line 7
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->this:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x2

    .line 8
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->break:Landroid/graphics/drawable/Drawable;

    .line 9
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->this:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f08028d

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->this:Landroid/graphics/drawable/Drawable;

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->break:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080293

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->break:Landroid/graphics/drawable/Drawable;

    .line 19
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->do:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->if:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->new:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->new:Z

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->if:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->this:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->break:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iput-boolean v0, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->const:Z

    .line 5
    iget-boolean p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->new:Z

    if-eqz p1, :cond_2

    .line 6
    new-instance p1, Lcom/biquge/ebook/app/widget/ExpandableTextView$for;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->try:I

    invoke-direct {p1, p0, p0, v1, v2}, Lcom/biquge/ebook/app/widget/ExpandableTextView$for;-><init>(Lcom/biquge/ebook/app/widget/ExpandableTextView;Landroid/view/View;II)V

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Lcom/biquge/ebook/app/widget/ExpandableTextView$for;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->case:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->do:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p1, p0, p0, v1, v2}, Lcom/biquge/ebook/app/widget/ExpandableTextView$for;-><init>(Lcom/biquge/ebook/app/widget/ExpandableTextView;Landroid/view/View;II)V

    .line 9
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 10
    new-instance v0, Lcom/biquge/ebook/app/widget/ExpandableTextView$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/widget/ExpandableTextView$do;-><init>(Lcom/biquge/ebook/app/widget/ExpandableTextView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0901fb

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->do:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901fa

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->if:Landroid/widget/ImageButton;

    .line 5
    iget-boolean v1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->new:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->this:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->break:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->if:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->const:Z

    return p1
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->for:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->for:Z

    .line 3
    iget-object v2, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->if:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->do:Landroid/widget/TextView;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 5
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 6
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->do:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    iget v2, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->else:I

    if-gt v1, v2, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->do:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 9
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    .line 10
    iput v1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->case:I

    .line 11
    iget-boolean v1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->new:Z

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->do:Landroid/widget/TextView;

    iget v2, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->else:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->if:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 14
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 15
    iget-boolean p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->new:Z

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->do:Landroid/widget/TextView;

    new-instance p2, Lcom/biquge/ebook/app/widget/ExpandableTextView$if;

    invoke-direct {p2, p0}, Lcom/biquge/ebook/app/widget/ExpandableTextView$if;-><init>(Lcom/biquge/ebook/app/widget/ExpandableTextView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->try:I

    :cond_3
    return-void

    .line 18
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setOnExpandStateChangeListener(Lcom/biquge/ebook/app/widget/ExpandableTextView$new;)V
    .locals 0
    .param p1    # Lcom/biquge/ebook/app/widget/ExpandableTextView$new;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->final:Lcom/biquge/ebook/app/widget/ExpandableTextView$new;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->for:Z

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ExpandableTextView;->do:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
