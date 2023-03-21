.class public Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity$do;
.super Lcom/apk/x5;
.source "CompleteInfoForeignActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;

    invoke-direct {p0}, Lcom/apk/x5;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/apk/v0;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string p2, "EVENT_COMPLE_USERINFO_KEY"

    .line 2
    invoke-static {p2, p1}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/CompleteInfoForeignActivity;

    invoke-virtual {p1}, Lcom/apk/f6;->finish()V

    return-void
.end method
