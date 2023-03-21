.class public Lcom/apk/za0;
.super Ljava/lang/Object;
.source "SmartKeyboardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/za0$if;,
        Lcom/apk/za0$do;
    }
.end annotation


# instance fields
.field public final case:Landroid/view/View;

.field public final do:Landroid/app/Activity;

.field public final else:Landroid/view/View;

.field public final for:Landroid/widget/EditText;

.field public final goto:Landroid/view/inputmethod/InputMethodManager;

.field public final if:Landroid/view/View;

.field public final new:Landroid/view/View;

.field public final this:Lcom/apk/za0$if;

.field public final try:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/apk/za0$do;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/apk/za0$do;->do:Landroid/app/Activity;

    .line 3
    iput-object v0, p0, Lcom/apk/za0;->do:Landroid/app/Activity;

    .line 4
    iget-object v0, p1, Lcom/apk/za0$do;->if:Landroid/view/View;

    .line 5
    iput-object v0, p0, Lcom/apk/za0;->if:Landroid/view/View;

    .line 6
    iget-object v0, p1, Lcom/apk/za0$do;->for:Landroid/widget/EditText;

    .line 7
    iput-object v0, p0, Lcom/apk/za0;->for:Landroid/widget/EditText;

    .line 8
    iget-object v1, p1, Lcom/apk/za0$do;->new:Landroid/view/View;

    .line 9
    iput-object v1, p0, Lcom/apk/za0;->new:Landroid/view/View;

    .line 10
    iget-object v1, p1, Lcom/apk/za0$do;->try:Landroid/view/View;

    .line 11
    iput-object v1, p0, Lcom/apk/za0;->try:Landroid/view/View;

    .line 12
    iget-object v1, p1, Lcom/apk/za0$do;->case:Landroid/view/View;

    .line 13
    iput-object v1, p0, Lcom/apk/za0;->case:Landroid/view/View;

    .line 14
    iget-object v1, p1, Lcom/apk/za0$do;->else:Landroid/view/View;

    .line 15
    iput-object v1, p0, Lcom/apk/za0;->else:Landroid/view/View;

    .line 16
    iget-object v1, p1, Lcom/apk/za0$do;->goto:Landroid/view/inputmethod/InputMethodManager;

    .line 17
    iput-object v1, p0, Lcom/apk/za0;->goto:Landroid/view/inputmethod/InputMethodManager;

    .line 18
    iget-object p1, p1, Lcom/apk/za0$do;->this:Lcom/apk/za0$if;

    .line 19
    iput-object p1, p0, Lcom/apk/za0;->this:Lcom/apk/za0$if;

    .line 20
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 21
    iget-object p1, p0, Lcom/apk/za0;->for:Landroid/widget/EditText;

    new-instance v0, Lcom/apk/qa0;

    invoke-direct {v0, p0}, Lcom/apk/qa0;-><init>(Lcom/apk/za0;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p1, p0, Lcom/apk/za0;->if:Landroid/view/View;

    new-instance v0, Lcom/apk/ra0;

    invoke-direct {v0, p0}, Lcom/apk/ra0;-><init>(Lcom/apk/za0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 23
    iget-object p1, p0, Lcom/apk/za0;->try:Landroid/view/View;

    new-instance v0, Lcom/apk/sa0;

    invoke-direct {v0, p0}, Lcom/apk/sa0;-><init>(Lcom/apk/za0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object p1, p0, Lcom/apk/za0;->else:Landroid/view/View;

    new-instance v0, Lcom/apk/ta0;

    invoke-direct {v0, p0}, Lcom/apk/ta0;-><init>(Lcom/apk/za0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static case(Lcom/apk/za0;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/apk/za0;->if:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-void
.end method

.method public static do(Lcom/apk/za0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/za0;->new:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance v1, Lcom/apk/wa0;

    invoke-direct {v1, p0}, Lcom/apk/wa0;-><init>(Lcom/apk/za0;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static for(Lcom/apk/za0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/za0;->if:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    iget-object p0, p0, Lcom/apk/za0;->if:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 p0, 0x0

    .line 3
    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-void
.end method

.method public static if(Lcom/apk/za0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/za0;->case:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance v1, Lcom/apk/xa0;

    invoke-direct {v1, p0}, Lcom/apk/xa0;-><init>(Lcom/apk/za0;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static try(Lcom/apk/za0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/za0;->goto:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/apk/za0;->for:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method


# virtual methods
.method public new()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/za0;->for:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2
    iget-object v0, p0, Lcom/apk/za0;->goto:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/apk/za0;->for:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
