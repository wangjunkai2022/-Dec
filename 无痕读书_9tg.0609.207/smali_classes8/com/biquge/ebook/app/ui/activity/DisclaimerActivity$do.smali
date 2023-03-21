.class public Lcom/biquge/ebook/app/ui/activity/DisclaimerActivity$do;
.super Lcom/apk/x5;
.source "DisclaimerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/DisclaimerActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/DisclaimerActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/DisclaimerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/DisclaimerActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/DisclaimerActivity;

    invoke-direct {p0}, Lcom/apk/x5;-><init>()V

    return-void
.end method


# virtual methods
.method public for(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/DisclaimerActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/DisclaimerActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/DisclaimerActivity;->mContentTxt:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/DisclaimerActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/DisclaimerActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/DisclaimerActivity;->mContentTxt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
