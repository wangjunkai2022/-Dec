.class public Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;
.super Lcom/lxj/xpopup/core/BottomPopupView;
.source "BarrageCommentsPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$OnCallBackBarrage;
    }
.end annotation


# static fields
.field public static final EDITTEXT_COLORS:[Ljava/lang/String;


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mContentEt:Landroid/widget/EditText;

.field public mOnCallBackBarrage:Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$OnCallBackBarrage;

.field public mSendTv:Landroid/widget/TextView;

.field public mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "#ffffff"

    const-string v1, "#F9739A"

    const-string v2, "#99cc00"

    const-string v3, "#ff4444"

    const-string v4, "#ffbb33"

    const-string v5, "#33b5e5"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->EDITTEXT_COLORS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$OnCallBackBarrage;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/BottomPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$2;

    invoke-direct {v0, p0}, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$2;-><init>(Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;)V

    iput-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 3
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->mActivity:Landroid/app/Activity;

    .line 4
    iput-object p2, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->mOnCallBackBarrage:Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$OnCallBackBarrage;

    return-void
.end method

.method public static synthetic access$000(I[Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->selectView(I[Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->EDITTEXT_COLORS:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->mContentEt:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->mSendTv:Landroid/widget/TextView;

    return-object p0
.end method

.method private initView()V
    .locals 9

    const v0, 0x7f0901e3

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->mContentEt:Landroid/widget/EditText;

    .line 2
    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->mContentEt:Landroid/widget/EditText;

    sget-object v1, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->EDITTEXT_COLORS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0901e4

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->mSendTv:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->mSendTv:Landroid/widget/TextView;

    const v1, -0x4c4c4d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->mSendTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090521

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    const v3, 0x7f09051f

    .line 10
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f09051d

    .line 11
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f090520

    .line 12
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f09051e

    .line 13
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f09051c

    .line 14
    invoke-virtual {p0, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const/4 v8, 0x6

    new-array v8, v8, [Landroid/widget/ImageView;

    aput-object v0, v8, v2

    aput-object v3, v8, v1

    const/4 v1, 0x2

    aput-object v4, v8, v1

    const/4 v1, 0x3

    aput-object v5, v8, v1

    const/4 v1, 0x4

    aput-object v6, v8, v1

    const/4 v1, 0x5

    aput-object v7, v8, v1

    .line 15
    new-instance v1, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$1;

    invoke-direct {v1, p0, v8}, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$1;-><init>(Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;[Landroid/widget/ImageView;)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static selectView(I[Landroid/widget/ImageView;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 2
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    aget-object p0, p1, p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c01c0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->mContentEt:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/apk/goto;->interface(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->mContentEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->mOnCallBackBarrage:Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$OnCallBackBarrage;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, p1, v0}, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView$OnCallBackBarrage;->onInputConntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    .line 2
    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->initView()V

    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onDismiss()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->mContentEt:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageCommentsPopupView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/apk/ze;->goto(Landroid/app/Activity;)V

    return-void
.end method

.method public onShow()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onShow()V

    return-void
.end method
