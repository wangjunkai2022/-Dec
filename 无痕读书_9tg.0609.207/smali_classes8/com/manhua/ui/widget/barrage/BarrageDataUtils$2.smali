.class public Lcom/manhua/ui/widget/barrage/BarrageDataUtils$2;
.super Ljava/lang/Object;
.source "BarrageDataUtils.java"

# interfaces
.implements Lcom/apk/q80;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->addBarrageData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

.field public final synthetic val$chapterId:Ljava/lang/String;

.field public final synthetic val$color:Ljava/lang/String;

.field public final synthetic val$content:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    iput-object p2, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$2;->val$chapterId:Ljava/lang/String;

    iput-object p3, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$2;->val$content:Ljava/lang/String;

    iput-object p4, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$2;->val$color:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f10003a

    .line 2
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p2

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    invoke-static {p1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->access$300(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;)Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    invoke-static {p1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->access$300(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;)Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;->onAddBarrage(Lcom/manhua/ui/widget/barrage/BarrageBean;ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    invoke-static {v0}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->access$200(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;)Lcom/apk/gg;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    invoke-static {v0}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->access$200(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;)Lcom/apk/gg;

    move-result-object v0

    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$2;->val$chapterId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :cond_0
    new-instance v1, Lcom/manhua/ui/widget/barrage/BarrageBean;

    iget-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$2;->val$content:Ljava/lang/String;

    iget-object v3, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$2;->val$color:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/manhua/ui/widget/barrage/BarrageBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Lcom/manhua/ui/widget/barrage/BarrageBean;->setMe(Z)V

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v3, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    invoke-static {v3}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->access$200(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;)Lcom/apk/gg;

    move-result-object v3

    iget-object v4, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$2;->val$chapterId:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    invoke-static {v0}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->access$300(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;)Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    invoke-static {v0}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->access$300(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;)Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string v3, "info"

    .line 10
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 11
    :goto_0
    invoke-interface {v0, v1, v2, p1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;->onAddBarrage(Lcom/manhua/ui/widget/barrage/BarrageBean;ZLjava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    invoke-static {p1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->access$300(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;)Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;->onResultBarrage()V

    :cond_2
    return-void
.end method
