.class public Lcom/biquge/ebook/app/widget/browse/obj/JsObj$6;
.super Ljava/lang/Object;
.source "JsObj.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->back()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/biquge/ebook/app/widget/browse/obj/JsObj;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/browse/obj/JsObj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$6;->this$0:Lcom/biquge/ebook/app/widget/browse/obj/JsObj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$6;->this$0:Lcom/biquge/ebook/app/widget/browse/obj/JsObj;

    invoke-static {v0}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->access$100(Lcom/biquge/ebook/app/widget/browse/obj/JsObj;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$6;->this$0:Lcom/biquge/ebook/app/widget/browse/obj/JsObj;

    invoke-static {v0}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->access$100(Lcom/biquge/ebook/app/widget/browse/obj/JsObj;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
