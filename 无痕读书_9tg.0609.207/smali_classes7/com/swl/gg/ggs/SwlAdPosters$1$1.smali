.class public Lcom/swl/gg/ggs/SwlAdPosters$1$1;
.super Ljava/lang/Object;
.source "SwlAdPosters.java"

# interfaces
.implements Lcom/apk/o40;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swl/gg/ggs/SwlAdPosters$1;->onPostExecute(Lcom/swl/gg/bean/SwlAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/swl/gg/ggs/SwlAdPosters$1;

.field public final synthetic val$bqAdView:Lcom/swl/gg/bean/SwlAdView;


# direct methods
.method public constructor <init>(Lcom/swl/gg/ggs/SwlAdPosters$1;Lcom/swl/gg/bean/SwlAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdPosters$1$1;->this$1:Lcom/swl/gg/ggs/SwlAdPosters$1;

    iput-object p2, p0, Lcom/swl/gg/ggs/SwlAdPosters$1$1;->val$bqAdView:Lcom/swl/gg/bean/SwlAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error()V
    .locals 0

    return-void
.end method

.method public success()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdPosters$1$1;->this$1:Lcom/swl/gg/ggs/SwlAdPosters$1;

    iget-object v0, v0, Lcom/swl/gg/ggs/SwlAdPosters$1;->this$0:Lcom/swl/gg/ggs/SwlAdPosters;

    invoke-static {v0}, Lcom/swl/gg/ggs/SwlAdPosters;->access$000(Lcom/swl/gg/ggs/SwlAdPosters;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdPosters$1$1;->this$1:Lcom/swl/gg/ggs/SwlAdPosters$1;

    iget-object v0, v0, Lcom/swl/gg/ggs/SwlAdPosters$1;->this$0:Lcom/swl/gg/ggs/SwlAdPosters;

    invoke-static {v0}, Lcom/swl/gg/ggs/SwlAdPosters;->access$000(Lcom/swl/gg/ggs/SwlAdPosters;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdPosters$1$1;->this$1:Lcom/swl/gg/ggs/SwlAdPosters$1;

    iget-object v0, v0, Lcom/swl/gg/ggs/SwlAdPosters$1;->this$0:Lcom/swl/gg/ggs/SwlAdPosters;

    invoke-static {v0}, Lcom/swl/gg/ggs/SwlAdPosters;->access$000(Lcom/swl/gg/ggs/SwlAdPosters;)Landroid/app/Activity;

    .line 3
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    iput-object v1, v0, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    .line 6
    new-instance v1, Lcom/swl/gg/ggs/ShowImagePopupView;

    iget-object v2, p0, Lcom/swl/gg/ggs/SwlAdPosters$1$1;->this$1:Lcom/swl/gg/ggs/SwlAdPosters$1;

    iget-object v2, v2, Lcom/swl/gg/ggs/SwlAdPosters$1;->this$0:Lcom/swl/gg/ggs/SwlAdPosters;

    .line 7
    invoke-static {v2}, Lcom/swl/gg/ggs/SwlAdPosters;->access$000(Lcom/swl/gg/ggs/SwlAdPosters;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/swl/gg/ggs/SwlAdPosters$1$1;->val$bqAdView:Lcom/swl/gg/bean/SwlAdView;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/swl/gg/ggs/ShowImagePopupView;-><init>(Landroid/content/Context;Lcom/swl/gg/bean/SwlAdView;Z)V

    .line 8
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 9
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    .line 10
    iput-object v0, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 11
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    :cond_0
    return-void
.end method
