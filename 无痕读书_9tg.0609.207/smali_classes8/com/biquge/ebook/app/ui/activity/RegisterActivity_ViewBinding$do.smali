.class public Lcom/biquge/ebook/app/ui/activity/RegisterActivity_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "RegisterActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/RegisterActivity_ViewBinding;-><init>(Lcom/biquge/ebook/app/ui/activity/RegisterActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/RegisterActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/RegisterActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/RegisterActivity_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/activity/RegisterActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/RegisterActivity_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/activity/RegisterActivity;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f09038a

    if-ne p1, v1, :cond_3

    .line 3
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/activity/RegisterActivity;->mAccountET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {p1}, Lcom/apk/goto;->transient(Lcom/biquge/ebook/app/widget/ClearEditText;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/activity/RegisterActivity;->mPasswordET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {v1}, Lcom/apk/goto;->transient(Lcom/biquge/ebook/app/widget/ClearEditText;)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, v0, Lcom/biquge/ebook/app/ui/activity/RegisterActivity;->mPasswordConfirmET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {v2}, Lcom/apk/goto;->transient(Lcom/biquge/ebook/app/widget/ClearEditText;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const p1, 0x7f10017b

    .line 8
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v2, v0, Lcom/biquge/ebook/app/ui/activity/RegisterActivity;->mEmailET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {v2}, Lcom/apk/goto;->transient(Lcom/biquge/ebook/app/widget/ClearEditText;)Ljava/lang/String;

    move-result-object v2

    .line 10
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/RegisterActivity;->do:Lcom/apk/g5;

    if-eqz v0, :cond_3

    .line 11
    new-instance v3, Lcom/apk/b1;

    invoke-direct {v3}, Lcom/apk/b1;-><init>()V

    new-instance v4, Lcom/apk/f5;

    invoke-direct {v4, v0, p1, v1, v2}, Lcom/apk/f5;-><init>(Lcom/apk/g5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_1

    :cond_2
    :goto_0
    const p1, 0x7f10017c

    .line 12
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 p1, 0x0

    .line 13
    throw p1
.end method
