.class public Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity$do;
.super Lcom/apk/x5;
.source "CompleteInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;

    invoke-direct {p0}, Lcom/apk/x5;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity$do$do;

    invoke-direct {v1, p0, p1, p2}, Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity$do$do;-><init>(Lcom/biquge/ebook/app/ui/activity/CompleteInfoActivity$do;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    const-string v2, "\u624b\u673a\u53f7\u7ed1\u5b9a\u6210\u529f <br/>\u60a8\u53ef\u4ee5\u968f\u65f6\u901a\u8fc7 <font color=\"#41A3FF\">\u3010\u9a8c\u8bc1\u7801\u767b\u5f55\u3011</font> \u65b9\u5f0f\uff08\u624b\u673a\u53f7\u7801+\u9a8c\u8bc1\u7801\uff09\u767b\u5f55APP"

    invoke-static {v0, v2, v1, p1, p2}, Lcom/apk/eg;->j(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;ZZ)V

    return-void
.end method
