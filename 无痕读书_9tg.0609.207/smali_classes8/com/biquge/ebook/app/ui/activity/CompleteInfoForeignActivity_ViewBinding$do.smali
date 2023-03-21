.class public Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "CompleteInfoForeignActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity_ViewBinding;-><init>(Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity_ViewBinding;Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090196

    if-ne p1, v1, :cond_2

    .line 3
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;->mAccountET:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/apk/goto;->interface(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;->mEmailET:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/apk/goto;->interface(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$"

    .line 6
    invoke-static {v2, v1}, Lcom/apk/eg;->protected(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;->do:Lcom/apk/g5;

    if-eqz v0, :cond_2

    const-string v2, "action"

    const-string v3, "bindrealemail"

    const-string v4, "email"

    .line 8
    invoke-static {v2, v3, v4, v1}, Lcom/apk/goto;->public(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 9
    invoke-static {}, Lcom/apk/w;->final()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/apk/h5;

    invoke-direct {v4, v0, p1, v1}, Lcom/apk/h5;-><init>(Lcom/apk/g5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v2, v4}, Lcom/apk/x4;->default(Ljava/lang/String;Ljava/util/Map;Lcom/apk/mx;)V

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x7f10024b

    .line 10
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 11
    throw p1
.end method
