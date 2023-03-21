.class public Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;
.super Lcom/apk/f6;
.source "CompleteInfoForeignActivity.java"


# instance fields
.field public do:Lcom/apk/g5;

.field public final if:Lcom/apk/x5;

.field public mAccountET:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a4
    .end annotation
.end field

.field public mEmailET:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a5
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;->if:Lcom/apk/x5;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0038

    return v0
.end method

.method public initData()V
    .locals 3

    .line 1
    new-instance v0, Lcom/apk/g5;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;->if:Lcom/apk/x5;

    invoke-direct {v0, p0, v1}, Lcom/apk/g5;-><init>(Landroid/app/Activity;Lcom/apk/x5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;->do:Lcom/apk/g5;

    .line 2
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/v0;->else()Lcom/biquge/ebook/app/bean/User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;->mAccountET:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;->mAccountET:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    const v1, 0x7f090192

    .line 7
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;->mEmailET:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f090066

    const v1, 0x7f1003bf

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    return-void
.end method

.method public isTouchHideKeybord()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
