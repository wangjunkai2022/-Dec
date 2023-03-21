.class public Lcom/biquge/ebook/app/widget/browse/obj/JsObj$2;
.super Ljava/lang/Object;
.source "JsObj.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->encryParamsForh5(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/biquge/ebook/app/widget/browse/obj/JsObj;

.field public final synthetic val$result:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/browse/obj/JsObj;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$2;->this$0:Lcom/biquge/ebook/app/widget/browse/obj/JsObj;

    iput-object p2, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$2;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$2;->this$0:Lcom/biquge/ebook/app/widget/browse/obj/JsObj;

    invoke-static {v0}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->access$000(Lcom/biquge/ebook/app/widget/browse/obj/JsObj;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:getEncryDatasFromNative(\'"

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$2;->val$result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
