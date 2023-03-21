.class public Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;
.super Lcom/apk/c1;
.source "BarrageDataUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->loadBarrageData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

.field public final synthetic val$bookId:Ljava/lang/String;

.field public final synthetic val$chapterId:Ljava/lang/String;

.field public final synthetic val$optionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    iput-object p2, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->val$optionKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->val$bookId:Ljava/lang/String;

    iput-object p4, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->val$chapterId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Boolean;
    .locals 5

    .line 2
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->val$optionKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->val$bookId:Ljava/lang/String;

    iget-object v3, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->val$chapterId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->access$000(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->val$optionKey:Ljava/lang/String;

    const-string v2, "Novel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lcom/apk/da;->else()Lcom/apk/da;

    move-result-object v1

    iget-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->val$bookId:Ljava/lang/String;

    iget-object v3, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->val$chapterId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/apk/da;->new(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNid()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->access$100(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    iget-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    iget-object v3, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->val$optionKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->val$bookId:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->access$000(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/apk/da;->else()Lcom/apk/da;

    move-result-object v1

    iget-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->val$bookId:Ljava/lang/String;

    iget-object v3, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->val$chapterId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/apk/da;->case(Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicChapterBean;->getNid()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->access$100(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    iget-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    iget-object v3, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->val$optionKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->val$bookId:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->access$000(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    .line 4
    invoke-static {p1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->access$200(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;)Lcom/apk/gg;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    invoke-static {p1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->access$200(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;)Lcom/apk/gg;

    move-result-object p1

    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->val$chapterId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/apk/gg;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    invoke-static {p1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->access$300(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;)Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    invoke-static {p1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->access$300(Lcom/manhua/ui/widget/barrage/BarrageDataUtils;)Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;->onResultBarrage()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
