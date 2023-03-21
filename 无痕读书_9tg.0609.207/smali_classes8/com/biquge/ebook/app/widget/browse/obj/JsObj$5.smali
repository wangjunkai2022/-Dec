.class public Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;
.super Ljava/lang/Object;
.source "JsObj.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->saveProgress(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/biquge/ebook/app/widget/browse/obj/JsObj;

.field public final synthetic val$cname:Ljava/lang/String;

.field public final synthetic val$id:Ljava/lang/String;

.field public final synthetic val$json:Ljava/lang/String;

.field public final synthetic val$protxt:Ljava/lang/String;

.field public final synthetic val$type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/browse/obj/JsObj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;->this$0:Lcom/biquge/ebook/app/widget/browse/obj/JsObj;

    iput-object p2, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;->val$cname:Ljava/lang/String;

    iput-object p5, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;->val$protxt:Ljava/lang/String;

    iput-object p6, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;->val$json:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;->val$type:Ljava/lang/String;

    const-string v1, "movie"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;->val$type:Ljava/lang/String;

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;->val$cname:Ljava/lang/String;

    iget-object v3, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;->val$protxt:Ljava/lang/String;

    iget-object v4, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;->val$json:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/eg;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;->val$type:Ljava/lang/String;

    const-string v1, "tingshu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;->val$type:Ljava/lang/String;

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;->val$cname:Ljava/lang/String;

    iget-object v3, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;->val$protxt:Ljava/lang/String;

    iget-object v4, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$5;->val$json:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/eg;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
