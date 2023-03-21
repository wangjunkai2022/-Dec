.class public Lcom/biquge/ebook/app/ui/activity/RegisterActivity;
.super Lcom/apk/f6;
.source "RegisterActivity.java"


# instance fields
.field public do:Lcom/apk/g5;

.field public headerView:Lcom/biquge/ebook/app/widget/HeaderView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090385
    .end annotation
.end field

.field public final if:Lcom/apk/x5;

.field public mAccountET:Lcom/biquge/ebook/app/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090384
    .end annotation
.end field

.field public mEmailET:Lcom/biquge/ebook/app/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090389
    .end annotation
.end field

.field public mPasswordConfirmET:Lcom/biquge/ebook/app/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09038c
    .end annotation
.end field

.field public mPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09038d
    .end annotation
.end field

.field public mServiceCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090430
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/RegisterActivity$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/RegisterActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/RegisterActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RegisterActivity;->if:Lcom/apk/x5;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c004d

    return v0
.end method

.method public initData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RegisterActivity;->mServiceCheckBox:Landroid/widget/CheckBox;

    invoke-static {v0}, Lcom/apk/ze;->x(Landroid/widget/CheckBox;)V

    .line 2
    new-instance v0, Lcom/apk/g5;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/RegisterActivity;->if:Lcom/apk/x5;

    invoke-direct {v0, p0, v1}, Lcom/apk/g5;-><init>(Landroid/app/Activity;Lcom/apk/x5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RegisterActivity;->do:Lcom/apk/g5;

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RegisterActivity;->headerView:Lcom/biquge/ebook/app/widget/HeaderView;

    const v1, 0x7f1002b1

    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(Lcom/biquge/ebook/app/widget/HeaderView;I)V

    return-void
.end method

.method public isTouchHideKeybord()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
