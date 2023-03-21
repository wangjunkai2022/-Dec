.class public Lcom/biquge/ebook/app/ui/activity/DisclaimerActivity;
.super Lcom/apk/f6;
.source "DisclaimerActivity.java"


# instance fields
.field public mContentTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901e1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c003d

    return v0
.end method

.method public initData()V
    .locals 7

    .line 1
    new-instance v0, Lcom/apk/g5;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/DisclaimerActivity$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/DisclaimerActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/DisclaimerActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/apk/g5;-><init>(Landroid/app/Activity;Lcom/apk/x5;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->class()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ver9/base"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/copyright.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x240c8400

    .line 3
    sget-object v4, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v5, Lcom/apk/m5;

    const-string v6, "SP_HOST_SHUC_XS_KEY"

    invoke-direct {v5, v0, v6}, Lcom/apk/m5;-><init>(Lcom/apk/g5;Ljava/lang/String;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    return-void
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f09006a

    const v1, 0x7f1002eb

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    return-void
.end method
