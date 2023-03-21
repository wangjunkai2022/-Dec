.class public Lcom/biquge/ebook/app/ui/activity/RetrievePasswordActivity;
.super Lcom/apk/f6;
.source "RetrievePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public do:Lcom/apk/g5;

.field public final if:Lcom/apk/x5;

.field public mEmailET:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090389
    .end annotation
.end field

.field public mLoginNameET:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090384
    .end annotation
.end field

.field public mPasswordAffirmET:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090474
    .end annotation
.end field

.field public mPasswordET:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090475
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/RetrievePasswordActivity$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/RetrievePasswordActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/RetrievePasswordActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RetrievePasswordActivity;->if:Lcom/apk/x5;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c004e

    return v0
.end method

.method public initData()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/g5;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/RetrievePasswordActivity;->if:Lcom/apk/x5;

    invoke-direct {v0, p0, v1}, Lcom/apk/g5;-><init>(Landroid/app/Activity;Lcom/apk/x5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RetrievePasswordActivity;->do:Lcom/apk/g5;

    return-void
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f090066

    const v1, 0x7f1003ca

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    const v0, 0x7f09038a

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isTouchHideKeybord()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09038a

    if-ne p1, v0, :cond_5

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/RetrievePasswordActivity;->mLoginNameET:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/apk/goto;->interface(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RetrievePasswordActivity;->mEmailET:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/apk/goto;->interface(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/RetrievePasswordActivity;->mPasswordET:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/apk/goto;->interface(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/RetrievePasswordActivity;->mPasswordAffirmET:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/apk/goto;->interface(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const p1, 0x7f10017b

    .line 9
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_2

    .line 10
    :cond_2
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/activity/RetrievePasswordActivity;->do:Lcom/apk/g5;

    if-eqz v2, :cond_5

    const-string v3, "action"

    const-string v4, "forwardpwd"

    const-string v5, "username"

    .line 11
    invoke-static {v3, v4, v5, p1}, Lcom/apk/goto;->public(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v3, "email"

    .line 12
    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    .line 13
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/apk/w;->final()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/apk/j5;

    invoke-direct {v1, v2}, Lcom/apk/j5;-><init>(Lcom/apk/g5;)V

    invoke-static {v0, p1, v1}, Lcom/apk/x4;->default(Ljava/lang/String;Ljava/util/Map;Lcom/apk/mx;)V

    goto :goto_2

    :cond_3
    :goto_0
    const p1, 0x7f10024d

    .line 15
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_2

    :cond_4
    :goto_1
    const p1, 0x7f10017a

    .line 16
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    :cond_5
    :goto_2
    return-void
.end method
