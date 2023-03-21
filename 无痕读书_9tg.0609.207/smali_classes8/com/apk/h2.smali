.class public Lcom/apk/h2;
.super Lcom/apk/qz;
.source "BookReadPresenter.java"

# interfaces
.implements Lcom/apk/u20$for;
.implements Lcom/apk/u20$do;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/h2$this;,
        Lcom/apk/h2$break;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/qz<",
        "Lcom/apk/l2;",
        ">;",
        "Lcom/apk/u20$for;",
        "Lcom/apk/u20$do;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public abstract:Landroid/widget/LinearLayout$LayoutParams;

.field public final b:Lcom/apk/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gg<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public break:Lcom/manhua/ui/widget/ComicReaderViewpager;

.field public final c:Landroid/view/View$OnClickListener;

.field public case:Ljava/lang/String;

.field public catch:Lcom/apk/v9;

.field public class:Lcom/manhua/ui/widget/PageRecyclerView;

.field public const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

.field public continue:Landroid/widget/LinearLayout$LayoutParams;

.field public final d:Lcom/apk/import$try;

.field public default:Lcom/biquge/ebook/app/bean/ReadPostion;

.field public e:Z

.field public else:Ljava/lang/String;

.field public extends:Z

.field public f:Z

.field public final:Lcom/biquge/ebook/app/widget/BookTitleTextView;

.field public final finally:Lcom/apk/k1;

.field public for:Lcom/biquge/ebook/app/bean/Book;

.field public g:Z

.field public goto:I

.field public h:Lcom/apk/h2$break;

.field public i:Lcom/apk/h2$this;

.field public implements:Lcom/biquge/ebook/app/bean/BookChapter;

.field public import:F

.field public final instanceof:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public interface:I

.field public final j:Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;

.field public k:Z

.field public l:Z

.field public m:Landroid/view/View$OnTouchListener;

.field public final n:Lcom/apk/pz;

.field public native:F

.field public new:Lcom/biquge/ebook/app/bean/CollectBook;

.field public o:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

.field public p:Lcom/biquge/ebook/app/bean/BookChapter;

.field public package:I

.field public private:I

.field public protected:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public public:Z

.field public q:Lcom/biquge/ebook/app/bean/BookChapter;

.field public r:I

.field public return:Z

.field public s:Landroid/view/LayoutInflater;

.field public static:Z

.field public strictfp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public super:Lcom/biquge/ebook/app/widget/BookPageTextView;

.field public switch:Landroid/os/Handler;

.field public synchronized:Z

.field public t:Landroid/widget/TextView;

.field public final this:Lcom/apk/g2;

.field public final throw:Lcom/apk/import;

.field public throws:I

.field public transient:I

.field public try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

.field public u:Z

.field public v:Z

.field public volatile:I

.field public w:Z

.field public while:Lcom/apk/zg;

.field public x:Z

.field public y:Z

.field public z:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/apk/l2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/apk/qz;-><init>(Landroid/app/Activity;Lcom/apk/rz;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/apk/h2;->throws:I

    .line 3
    new-instance p3, Lcom/apk/h2$for;

    invoke-direct {p3, p0}, Lcom/apk/h2$for;-><init>(Lcom/apk/h2;)V

    iput-object p3, p0, Lcom/apk/h2;->finally:Lcom/apk/k1;

    .line 4
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/apk/h2;->strictfp:Ljava/util/Map;

    .line 5
    iput p1, p0, Lcom/apk/h2;->volatile:I

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/apk/h2;->instanceof:Ljava/util/Map;

    .line 7
    new-instance p1, Lcom/apk/gg;

    invoke-direct {p1}, Lcom/apk/gg;-><init>()V

    iput-object p1, p0, Lcom/apk/h2;->b:Lcom/apk/gg;

    .line 8
    new-instance p1, Lcom/apk/h2$case;

    invoke-direct {p1, p0}, Lcom/apk/h2$case;-><init>(Lcom/apk/h2;)V

    iput-object p1, p0, Lcom/apk/h2;->c:Landroid/view/View$OnClickListener;

    .line 9
    new-instance p1, Lcom/apk/h2$else;

    invoke-direct {p1, p0}, Lcom/apk/h2$else;-><init>(Lcom/apk/h2;)V

    iput-object p1, p0, Lcom/apk/h2;->d:Lcom/apk/import$try;

    .line 10
    new-instance p1, Lcom/apk/h2$goto;

    invoke-direct {p1, p0}, Lcom/apk/h2$goto;-><init>(Lcom/apk/h2;)V

    iput-object p1, p0, Lcom/apk/h2;->j:Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;

    .line 11
    new-instance p1, Lcom/apk/h2$do;

    invoke-direct {p1, p0}, Lcom/apk/h2$do;-><init>(Lcom/apk/h2;)V

    iput-object p1, p0, Lcom/apk/h2;->n:Lcom/apk/pz;

    .line 12
    iput-object p2, p0, Lcom/apk/h2;->switch:Landroid/os/Handler;

    .line 13
    new-instance p1, Lcom/apk/g2;

    invoke-direct {p1}, Lcom/apk/g2;-><init>()V

    iput-object p1, p0, Lcom/apk/h2;->this:Lcom/apk/g2;

    .line 14
    new-instance p1, Lcom/apk/import;

    sget-object p2, Lcom/apk/hf;->do:Lcom/apk/hf;

    invoke-direct {p1, p2}, Lcom/apk/import;-><init>(Lcom/apk/hf;)V

    iput-object p1, p0, Lcom/apk/h2;->throw:Lcom/apk/import;

    return-void
.end method

.method public static for(Lcom/apk/h2;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/apk/h2;->native(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object p0

    return-object p0
.end method

.method public static new(I)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "BOOKRE_CHAPTER_PAGE_AD_TYPE"

    invoke-static {v0, p0}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static package(Lcom/biquge/ebook/app/bean/BookChapter;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/BookChapter;->getItemType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/BookChapter;->getItemType()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static private(Lcom/biquge/ebook/app/bean/BookChapter;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/apk/h2;->package(Lcom/biquge/ebook/app/bean/BookChapter;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/BookChapter;->getValues()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/BookChapter;->getValues()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/BookChapter;->getValues()Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "LOAD_FAILED"

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return v0
.end method

.method public static throws(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LOAD_AD_CHAPTER_ID"

    const-string v1, ""

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static try(Lcom/apk/h2;Lcom/biquge/ebook/app/bean/ChapterBean;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/apk/h2;->m(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    move-object v5, v1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v0

    move v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/apk/h2;->for:Lcom/biquge/ebook/app/bean/Book;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 5
    iget-object v2, p0, Lcom/apk/h2;->for:Lcom/biquge/ebook/app/bean/Book;

    iget-object v3, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    const/4 v7, 0x1

    const-string v4, ""

    const/4 v8, 0x1

    .line 6
    invoke-static/range {v2 .. v8}, Lcom/apk/n2;->t(Lcom/biquge/ebook/app/bean/Book;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 7
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/apk/h2;->while()Ljava/lang/String;

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 8
    :cond_2
    throw v1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v0, :cond_5

    .line 10
    new-instance v2, Lcom/biquge/ebook/app/bean/Book;

    invoke-direct {v2}, Lcom/biquge/ebook/app/bean/Book;-><init>()V

    .line 11
    iget-object v0, p0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/bean/Book;->setId(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/bean/Book;->setName(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/bean/Book;->setImg(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/bean/Book;->setAuthor(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getFirstChapterUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/apk/nd;->new(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/bean/Book;->setFirstChapterId(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 16
    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/bean/Book;->setWebSite(Z)V

    .line 17
    iget-object v0, p0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/bean/Book;->setLastChapter(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getLastChapterUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/bean/Book;->setLastChapterId(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/bean/Book;->setChapterUrl(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getLastChapterUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/bean/Book;->setLastChapterId(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/bean/Book;->setLastChapter(Ljava/lang/String;)V

    .line 22
    iget-object v3, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    const/4 v7, 0x1

    const-string v4, ""

    const/4 v8, 0x1

    .line 23
    invoke-static/range {v2 .. v8}, Lcom/apk/n2;->t(Lcom/biquge/ebook/app/bean/Book;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 24
    iget-object v0, p0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-static {v0, v2}, Lcom/apk/nd;->import(Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V

    .line 25
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/apk/h2;->while()Ljava/lang/String;

    if-eqz v0, :cond_4

    goto :goto_2

    .line 26
    :cond_4
    throw v1

    .line 27
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/n2;->f(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apk/h2;->static:Z

    .line 28
    invoke-static {}, Lcom/apk/ze;->V()V

    .line 29
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/apk/h2;->while()Ljava/lang/String;

    if-eqz v0, :cond_6

    goto :goto_3

    .line 30
    :cond_6
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public final B(IZ)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast p2, Lcom/apk/l2;

    invoke-interface {p2, v1, v0}, Lcom/apk/l2;->do(ZZ)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result p2

    const/4 v2, 0x2

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object p2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "bookId = ?"

    aput-object v4, v3, v0

    aput-object p2, v3, v1

    .line 5
    invoke-static {v3}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p2

    const-class v3, Lcom/biquge/ebook/app/bean/ReadPostion;

    invoke-virtual {p2, v3}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/biquge/ebook/app/bean/ReadPostion;

    .line 6
    iput-object p2, p0, Lcom/apk/h2;->default:Lcom/biquge/ebook/app/bean/ReadPostion;

    .line 7
    :cond_1
    iput v0, p0, Lcom/apk/h2;->interface:I

    .line 8
    iput p1, p0, Lcom/apk/h2;->goto:I

    .line 9
    invoke-virtual {p0, v1}, Lcom/apk/h2;->H(Z)V

    .line 10
    iget-object p1, p0, Lcom/apk/h2;->throw:Lcom/apk/import;

    .line 11
    iput v0, p1, Lcom/apk/import;->case:I

    .line 12
    iget-object p1, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object p1

    .line 13
    iget-boolean p2, p0, Lcom/apk/h2;->return:Z

    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNid()Ljava/lang/String;

    move-result-object p2

    const-string v3, "-1"

    .line 15
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 16
    iget-boolean v3, p0, Lcom/apk/h2;->f:Z

    if-eqz v3, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    iput-boolean v1, p0, Lcom/apk/h2;->f:Z

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, 0x0

    :cond_4
    :goto_1
    const-string v9, ""

    if-nez p2, :cond_5

    .line 18
    invoke-virtual {p0, p1, v1}, Lcom/apk/h2;->volatile(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 19
    :cond_5
    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_2

    :cond_6
    move-object v5, v9

    .line 21
    :goto_2
    invoke-virtual {p0}, Lcom/apk/h2;->finally()Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    move-result-object v7

    const/4 v8, 0x1

    move v6, p2

    .line 22
    invoke-static/range {v3 .. v8}, Lcom/apk/n2;->super(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Z)Z

    .line 23
    :cond_7
    iput v0, p0, Lcom/apk/h2;->volatile:I

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iget-object v3, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v3

    if-eqz p2, :cond_9

    if-eqz v3, :cond_9

    .line 26
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/ChapterBean;->isHasContent()Z

    move-result p2

    if-nez p2, :cond_9

    .line 27
    iget-object p2, p0, Lcom/apk/h2;->strictfp:Ljava/util/Map;

    iget-object v4, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 28
    iget-object p2, p0, Lcom/apk/h2;->strictfp:Ljava/util/Map;

    iget-object v4, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    invoke-interface {p2, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p2

    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/apk/h2;->while()Ljava/lang/String;

    if-eqz p2, :cond_8

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    .line 30
    throw p1

    :cond_9
    :goto_3
    if-eqz v3, :cond_17

    .line 31
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result p2

    if-nez p2, :cond_a

    .line 32
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getPid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/apk/h2;->goto(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 33
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getPid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 34
    invoke-virtual {p0, p2}, Lcom/apk/h2;->i(Lcom/biquge/ebook/app/bean/ChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    goto :goto_4

    :cond_a
    const/4 p2, 0x0

    .line 35
    :goto_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-virtual {p0, v3, v0}, Lcom/apk/h2;->volatile(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 37
    invoke-virtual {p0, v3}, Lcom/apk/h2;->j(Lcom/biquge/ebook/app/bean/ChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 38
    :cond_b
    invoke-virtual {p0, v3, v0}, Lcom/apk/h2;->m(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Ljava/util/List;

    move-result-object v5

    .line 39
    move-object v6, v5

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_c

    const/4 v7, 0x1

    goto :goto_5

    :cond_c
    const/4 v7, 0x0

    :goto_5
    and-int/2addr v7, v1

    if-eqz v7, :cond_10

    .line 40
    :try_start_0
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 41
    iget-object v7, p0, Lcom/apk/h2;->throw:Lcom/apk/import;

    invoke-virtual {v7}, Lcom/apk/import;->for()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 42
    iget v7, p0, Lcom/apk/h2;->goto:I

    if-lez v7, :cond_d

    iget v7, p0, Lcom/apk/h2;->goto:I

    sub-int/2addr v7, v1

    goto :goto_6

    :cond_d
    iget v7, p0, Lcom/apk/h2;->goto:I

    .line 43
    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_7
    add-int v10, v9, v8

    if-ge v7, v10, :cond_f

    .line 44
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/biquge/ebook/app/bean/BookChapter;

    .line 45
    iget v11, p0, Lcom/apk/h2;->interface:I

    add-int/2addr v11, v1

    iput v11, p0, Lcom/apk/h2;->interface:I

    if-eqz v11, :cond_e

    .line 46
    iget-object v12, p0, Lcom/apk/h2;->throw:Lcom/apk/import;

    .line 47
    iget v12, v12, Lcom/apk/import;->goto:I

    .line 48
    rem-int/2addr v11, v12

    if-nez v11, :cond_e

    .line 49
    invoke-virtual {v10}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v11, v10}, Lcom/apk/h2;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :catch_0
    move-exception v6

    .line 50
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    :cond_f
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    :cond_10
    :goto_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, p0, Lcom/apk/h2;->volatile:I

    .line 53
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    iget v5, p0, Lcom/apk/h2;->goto:I

    const/16 v6, 0x3e7

    if-ne v5, v6, :cond_11

    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, p2

    iput v5, p0, Lcom/apk/h2;->goto:I

    .line 56
    :cond_11
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result v5

    if-nez v5, :cond_16

    .line 57
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/apk/h2;->goto(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 58
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 59
    invoke-virtual {p0, v5, v0}, Lcom/apk/h2;->volatile(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 60
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v2, :cond_12

    .line 61
    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v6

    .line 62
    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v7

    .line 63
    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/ChapterBean;->getUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/apk/h2;->finally()Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    move-result-object v10

    const/4 v11, 0x1

    .line 65
    invoke-static/range {v6 .. v11}, Lcom/apk/n2;->super(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Z)Z

    goto :goto_9

    :cond_12
    const/4 v2, 0x0

    goto :goto_a

    :cond_13
    :goto_9
    const/4 v2, 0x1

    :goto_a
    if-eqz v2, :cond_16

    .line 66
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v2

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual {p0, v2, v1}, Lcom/apk/h2;->m(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Ljava/util/List;

    move-result-object v4

    .line 69
    move-object v5, v4

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_14

    const/4 v0, 0x1

    :cond_14
    and-int/2addr v0, v1

    if-eqz v0, :cond_15

    .line 70
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    .line 71
    :cond_15
    invoke-virtual {p0, v2}, Lcom/apk/h2;->i(Lcom/biquge/ebook/app/bean/ChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :goto_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 73
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_16
    move v0, p2

    goto :goto_c

    .line 74
    :cond_17
    iput v0, p0, Lcom/apk/h2;->goto:I

    .line 75
    invoke-virtual {p0, v3}, Lcom/apk/h2;->j(Lcom/biquge/ebook/app/bean/ChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :goto_c
    iget p2, p0, Lcom/apk/h2;->goto:I

    if-lez p2, :cond_18

    add-int/lit8 p2, p2, -0x1

    :cond_18
    add-int/2addr v0, p2

    .line 77
    iget-object p2, p0, Lcom/apk/h2;->switch:Landroid/os/Handler;

    if-eqz p2, :cond_19

    .line 78
    new-instance v1, Lcom/apk/d2;

    invoke-direct {v1, p0, p1, v0}, Lcom/apk/d2;-><init>(Lcom/apk/h2;Ljava/util/List;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_19
    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/apk/h2;->goto:I

    .line 3
    invoke-virtual {p0}, Lcom/apk/h2;->w()V

    .line 4
    invoke-virtual {p0}, Lcom/apk/h2;->z()V

    return-void
.end method

.method public D(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/apk/h2;->e:Z

    .line 2
    iget-object v0, p0, Lcom/apk/h2;->throw:Lcom/apk/import;

    if-eqz v0, :cond_0

    .line 3
    iput-boolean p1, v0, Lcom/apk/import;->import:Z

    :cond_0
    return-void
.end method

.method public E(I)V
    .locals 12

    .line 1
    iput p1, p0, Lcom/apk/h2;->transient:I

    .line 2
    invoke-virtual {p0, p1}, Lcom/apk/h2;->return(I)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/h2;->implements:Lcom/biquge/ebook/app/bean/BookChapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apk/h2;->implements:Lcom/biquge/ebook/app/bean/BookChapter;

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/apk/h2;->implements:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    iput-object p1, p0, Lcom/apk/h2;->implements:Lcom/biquge/ebook/app/bean/BookChapter;

    .line 7
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/apk/h2;->implements:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v0

    iput v0, p0, Lcom/apk/h2;->goto:I

    .line 9
    iget-object v0, p0, Lcom/apk/h2;->implements:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getNeed_share()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/h2;->else:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/apk/h2;->final:Lcom/biquge/ebook/app/widget/BookTitleTextView;

    iget-object v1, p0, Lcom/apk/h2;->implements:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/BookTitleTextView;->setText(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/apk/h2;->super:Lcom/biquge/ebook/app/widget/BookPageTextView;

    iget-object v1, p0, Lcom/apk/h2;->implements:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v1

    iget-object v2, p0, Lcom/apk/h2;->implements:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/biquge/ebook/app/widget/BookPageTextView;->if(II)V

    .line 12
    iget-boolean v0, p0, Lcom/apk/h2;->y:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/apk/h2;->default()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast v0, Lcom/apk/l2;

    invoke-interface {v0}, Lcom/apk/l2;->e()V

    .line 15
    :cond_3
    iget-boolean v0, p0, Lcom/apk/h2;->static:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    iget-object v4, p0, Lcom/apk/h2;->implements:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/apk/h2;->goto:I

    .line 17
    invoke-static {v0, v3, v4, v5, v2}, Lcom/apk/g2;->finally(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    :cond_4
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    new-instance v3, Lcom/apk/k2;

    invoke-direct {v3, p0}, Lcom/apk/k2;-><init>(Lcom/apk/h2;)V

    invoke-virtual {v0, v3}, Lcom/apk/o;->if(Ljava/lang/Runnable;)V

    .line 19
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v0

    if-le v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 20
    iget-object v0, p0, Lcom/apk/h2;->throw:Lcom/apk/import;

    iget-object v3, p0, Lcom/apk/qz;->if:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Lcom/apk/import;->this(Landroid/app/Activity;)V

    .line 21
    iget-object v0, p0, Lcom/apk/h2;->throw:Lcom/apk/import;

    .line 22
    iget v3, v0, Lcom/apk/import;->case:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/apk/import;->case:I

    .line 23
    :cond_5
    invoke-static {p1}, Lcom/apk/h2;->package(Lcom/biquge/ebook/app/bean/BookChapter;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 24
    invoke-virtual {p0}, Lcom/apk/h2;->strictfp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    iget-object v0, p0, Lcom/apk/h2;->j:Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;

    invoke-interface {v0}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;->onResultBarrage()V

    .line 26
    :cond_6
    iget-object v0, p0, Lcom/apk/h2;->implements:Lcom/biquge/ebook/app/bean/BookChapter;

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v0

    if-eq v0, v1, :cond_8

    .line 27
    iget-object v0, p0, Lcom/apk/h2;->implements:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v0

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    .line 28
    :goto_0
    iget-object v4, p0, Lcom/apk/h2;->implements:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v4

    iget-object v5, p0, Lcom/apk/h2;->implements:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v5

    if-ne v4, v5, :cond_9

    const/4 v4, 0x1

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :cond_9
    const/4 v4, 0x0

    .line 29
    :goto_1
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object v5

    iget-object v6, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    iget-object v7, p0, Lcom/apk/h2;->else:Ljava/lang/String;

    .line 30
    iget-object v8, v5, Lcom/apk/r0;->package:Lcom/apk/k1;

    const-string v9, ""

    if-nez v8, :cond_a

    goto/16 :goto_5

    .line 31
    :cond_a
    iget-object v8, v5, Lcom/apk/n0;->static:Ljava/util/List;

    if-eqz v8, :cond_17

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_b

    goto/16 :goto_5

    .line 32
    :cond_b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    goto/16 :goto_5

    .line 33
    :cond_c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v10, "LOAD_AD_CHAPTER_ID"

    if-nez v8, :cond_d

    .line 34
    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_d
    move-object v8, v6

    .line 35
    :goto_2
    iput-object v8, v5, Lcom/apk/n0;->switch:Ljava/lang/String;

    .line 36
    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/apk/n0;->throws:Z

    if-eqz v0, :cond_f

    .line 37
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "yes"

    .line 38
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    goto :goto_3

    :cond_e
    const/4 v6, 0x0

    .line 39
    :goto_3
    iput-boolean v6, v5, Lcom/apk/r0;->private:Z

    if-eqz v6, :cond_f

    .line 40
    invoke-static {v8}, Lcom/apk/r0;->final(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 41
    iput-boolean v1, v5, Lcom/apk/n0;->break:Z

    .line 42
    iget-object v6, v5, Lcom/apk/r0;->package:Lcom/apk/k1;

    if-eqz v6, :cond_f

    .line 43
    invoke-interface {v6}, Lcom/apk/k1;->for()V

    .line 44
    :cond_f
    iget-boolean v6, v5, Lcom/apk/r0;->private:Z

    if-eqz v6, :cond_10

    goto/16 :goto_5

    .line 45
    :cond_10
    iget-boolean v6, v5, Lcom/apk/n0;->catch:Z

    const-string v7, "#"

    if-eqz v6, :cond_15

    .line 46
    iget-object v3, v5, Lcom/apk/n0;->const:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v5, Lcom/apk/n0;->const:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    :cond_11
    if-eqz v4, :cond_13

    .line 47
    iget-object v3, v5, Lcom/apk/n0;->const:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 48
    invoke-static {v8, v7}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/apk/n0;->const:Ljava/lang/String;

    goto :goto_4

    .line 49
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v5, Lcom/apk/n0;->const:Ljava/lang/String;

    invoke-static {v3, v4, v8, v7}, Lcom/apk/goto;->final(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/apk/n0;->const:Ljava/lang/String;

    .line 50
    :goto_4
    iget-object v3, v5, Lcom/apk/n0;->const:Ljava/lang/String;

    .line 51
    sget-object v4, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "SP_VIEWTOPREWARD_CHAPTERS_KEY"

    invoke-virtual {v4, v6, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    :cond_13
    iget-object v3, v5, Lcom/apk/n0;->const:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    if-eqz v0, :cond_17

    .line 53
    iget-boolean v0, v5, Lcom/apk/n0;->final:Z

    iget-boolean v3, v5, Lcom/apk/n0;->super:Z

    iget-wide v10, v5, Lcom/apk/n0;->throw:J

    invoke-static {v0, v3, v10, v11}, Lcom/apk/r0;->break(ZZJ)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v5, Lcom/apk/n0;->const:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iget v3, v5, Lcom/apk/n0;->class:I

    if-lt v0, v3, :cond_17

    .line 55
    :cond_14
    invoke-virtual {v5}, Lcom/apk/r0;->this()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 56
    iput-boolean v1, v5, Lcom/apk/n0;->break:Z

    .line 57
    iget-object v0, v5, Lcom/apk/r0;->package:Lcom/apk/k1;

    if-eqz v0, :cond_17

    .line 58
    invoke-interface {v0}, Lcom/apk/k1;->do()V

    goto :goto_5

    .line 59
    :cond_15
    iget-object v0, v5, Lcom/apk/r0;->package:Lcom/apk/k1;

    invoke-virtual {v5, v0, v3}, Lcom/apk/r0;->while(Lcom/apk/k1;Z)V

    .line 60
    iget-object v0, v5, Lcom/apk/n0;->goto:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v5, Lcom/apk/n0;->goto:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 61
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/apk/n0;->goto:Ljava/lang/String;

    invoke-static {v0, v3, v8, v7}, Lcom/apk/goto;->final(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/apk/n0;->goto:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    new-instance v3, Lcom/apk/j0;

    invoke-direct {v3, v5}, Lcom/apk/j0;-><init>(Lcom/apk/r0;)V

    .line 63
    iget-object v0, v0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_17

    .line 64
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 65
    :cond_17
    :goto_5
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 66
    iput-boolean p1, p0, Lcom/apk/h2;->extends:Z

    .line 67
    invoke-virtual {p0}, Lcom/apk/h2;->z()V

    .line 68
    :cond_18
    iget-object p1, p0, Lcom/apk/h2;->while:Lcom/apk/zg;

    if-eqz p1, :cond_19

    .line 69
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 70
    iget-object p1, p0, Lcom/apk/h2;->while:Lcom/apk/zg;

    .line 71
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 72
    iget-object v0, p1, Lcom/apk/zg;->do:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    iget-object v0, p1, Lcom/apk/zg;->if:Landroid/view/animation/Animation;

    if-eqz v0, :cond_19

    .line 73
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 74
    iget-object p1, p1, Lcom/apk/zg;->do:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    .line 75
    :cond_19
    iget-boolean p1, p0, Lcom/apk/h2;->synchronized:Z

    if-nez p1, :cond_1a

    .line 76
    invoke-virtual {p0, v1}, Lcom/apk/h2;->continue(Z)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 77
    iput-boolean v1, p0, Lcom/apk/h2;->synchronized:Z

    .line 78
    invoke-static {}, Lcom/apk/switch;->for()Lcom/apk/switch;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/switch;->new()V

    .line 79
    :cond_1a
    iget-object p1, p0, Lcom/apk/h2;->instanceof:Ljava/util/Map;

    iget-object v0, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 80
    iget-object p1, p0, Lcom/apk/h2;->instanceof:Ljava/util/Map;

    iget-object v0, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    invoke-interface {p1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/apk/h2;->while()Ljava/lang/String;

    iget-object v0, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 82
    invoke-static {v0}, Lcom/apk/h2;->throws(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/apk/h2;->implements:Lcom/biquge/ebook/app/bean/BookChapter;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    :cond_1b
    if-eqz p1, :cond_1c

    goto :goto_6

    .line 83
    :cond_1c
    throw v2

    :cond_1d
    :goto_6
    return-void
.end method

.method public final F(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast v0, Lcom/apk/l2;

    invoke-interface {v0}, Lcom/apk/l2;->transient()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/apk/h2;->private:I

    iget v4, p0, Lcom/apk/h2;->package:I

    add-int/2addr v3, v4

    if-eq v0, v3, :cond_3

    .line 3
    iget-object v0, p0, Lcom/apk/h2;->abstract:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/apk/h2;->private:I

    iget v4, p0, Lcom/apk/h2;->package:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/apk/h2;->abstract:Landroid/widget/LinearLayout$LayoutParams;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/h2;->abstract:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iget v3, p0, Lcom/apk/h2;->private:I

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/apk/h2;->package:I

    if-eq v0, v3, :cond_3

    .line 8
    iget-object v0, p0, Lcom/apk/h2;->continue:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/apk/h2;->package:I

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/apk/h2;->continue:Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/apk/h2;->continue:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method public G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public H(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    if-eqz v0, :cond_2

    xor-int/lit8 p1, p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Lcom/manhua/ui/widget/PageRecyclerView;->setScrollEnabled(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/apk/h2;->g:Z

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    if-eqz v0, :cond_2

    xor-int/lit8 p1, p1, 0x1

    .line 6
    invoke-virtual {v0, p1}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCanScroll(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public I()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast v1, Lcom/apk/l2;

    invoke-interface {v1}, Lcom/apk/l2;->transient()Z

    move-result v1

    .line 3
    iput-boolean v1, v0, Lcom/apk/v9;->this:Z

    .line 4
    :cond_0
    iget v0, p0, Lcom/apk/h2;->package:I

    if-nez v0, :cond_1

    const/high16 v0, 0x41f00000    # 30.0f

    .line 5
    invoke-static {v0}, Lcom/apk/eg;->catch(F)I

    move-result v0

    iput v0, p0, Lcom/apk/h2;->package:I

    .line 6
    invoke-static {}, Lcom/apk/finally;->case()I

    move-result v0

    iput v0, p0, Lcom/apk/h2;->private:I

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/apk/h2;->super:Lcom/biquge/ebook/app/widget/BookPageTextView;

    invoke-virtual {p0, v0}, Lcom/apk/h2;->F(Landroid/view/View;)V

    return-void
.end method

.method public J(FF)V
    .locals 2

    const/high16 v0, 0x41700000    # 15.0f

    .line 1
    invoke-static {v0}, Lcom/apk/eg;->catch(F)I

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    .line 2
    invoke-static {v1}, Lcom/apk/eg;->catch(F)I

    move-result v1

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 3
    iput p1, p0, Lcom/apk/h2;->import:F

    mul-int/lit8 v1, v1, 0x2

    int-to-float p1, v1

    sub-float/2addr p2, p1

    .line 4
    iput p2, p0, Lcom/apk/h2;->native:F

    .line 5
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object p1

    iget p2, p0, Lcom/apk/h2;->import:F

    iget v0, p0, Lcom/apk/h2;->native:F

    .line 6
    iput p2, p1, Lcom/apk/ca;->else:F

    .line 7
    iput v0, p1, Lcom/apk/ca;->goto:F

    return-void
.end method

.method public K()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/h2;->protected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/apk/h2;->N(I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized L()Z
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/h2;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 3
    :try_start_1
    iget-object v2, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/2addr v2, v0

    .line 4
    invoke-virtual {p0}, Lcom/apk/h2;->extends()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v2, v3, :cond_1

    .line 5
    monitor-exit p0

    return v1

    .line 6
    :cond_1
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/apk/h2;->return(I)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v3

    if-nez v3, :cond_6

    .line 7
    invoke-virtual {p0, v0}, Lcom/apk/h2;->continue(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    iget-object v2, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast v2, Lcom/apk/l2;

    invoke-interface {v2}, Lcom/apk/l2;->import()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    monitor-exit p0

    return v1

    .line 10
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 11
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v5

    if-eq v5, v0, :cond_3

    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v5

    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 12
    :cond_3
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/BookChapter;->getValues()Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v3, "LOAD_FAILED"

    .line 13
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/BookChapter;->getValues()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_4

    .line 14
    monitor-exit p0

    return v1

    .line 15
    :cond_4
    :try_start_4
    iput-boolean v0, p0, Lcom/apk/h2;->v:Z

    .line 16
    invoke-virtual {p0, v0}, Lcom/apk/h2;->n(Z)V

    .line 17
    iget-object v3, p0, Lcom/apk/h2;->o:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->do()V

    .line 18
    iget-object v3, p0, Lcom/apk/h2;->switch:Landroid/os/Handler;

    if-eqz v3, :cond_5

    .line 19
    iget-object v3, p0, Lcom/apk/h2;->switch:Landroid/os/Handler;

    new-instance v4, Lcom/apk/x1;

    invoke-direct {v4, p0, v2}, Lcom/apk/x1;-><init>(Lcom/apk/h2;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 20
    :cond_5
    monitor-exit p0

    return v1

    .line 21
    :cond_6
    :try_start_5
    iget-object v1, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {v1, v2}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCurrentItem(I)V

    .line 22
    iput-boolean v0, p0, Lcom/apk/h2;->u:Z

    .line 23
    iget-object v1, p0, Lcom/apk/h2;->p:Lcom/biquge/ebook/app/bean/BookChapter;

    iput-object v1, p0, Lcom/apk/h2;->q:Lcom/biquge/ebook/app/bean/BookChapter;

    .line 24
    iput-object v3, p0, Lcom/apk/h2;->p:Lcom/biquge/ebook/app/bean/BookChapter;

    .line 25
    iget-object v1, p0, Lcom/apk/h2;->o:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->do()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 26
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 27
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized M()Z
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/apk/h2;->extends()I

    move-result v3

    if-lt v1, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lcom/apk/h2;->return(I)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 4
    monitor-exit p0

    return v2

    .line 5
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {v4, v1}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCurrentItem(I)V

    .line 6
    iput-boolean v2, p0, Lcom/apk/h2;->u:Z

    .line 7
    iget-object v1, p0, Lcom/apk/h2;->p:Lcom/biquge/ebook/app/bean/BookChapter;

    iput-object v1, p0, Lcom/apk/h2;->q:Lcom/biquge/ebook/app/bean/BookChapter;

    .line 8
    iput-object v3, p0, Lcom/apk/h2;->p:Lcom/biquge/ebook/app/bean/BookChapter;

    .line 9
    iget-object v1, p0, Lcom/apk/h2;->o:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->do()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 11
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :goto_1
    monitor-exit p0

    return v0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final N(I)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v0, :cond_6

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/h2;->switch()I

    move-result v0

    sub-int/2addr v0, v5

    .line 3
    invoke-virtual {p0}, Lcom/apk/h2;->switch()I

    move-result v6

    add-int/2addr v6, v5

    :goto_0
    if-ge v0, v6, :cond_c

    .line 4
    invoke-virtual {p0, v0}, Lcom/apk/h2;->return(I)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 5
    invoke-static {v7}, Lcom/apk/h2;->package(Lcom/biquge/ebook/app/bean/BookChapter;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 6
    iget-object v8, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-static {v7}, Lcom/apk/n2;->throws(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/manhua/ui/widget/barrage/BarrageView;

    if-eqz v7, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v5, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v7}, Lcom/manhua/ui/widget/barrage/BarrageView;->resume()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v7}, Lcom/manhua/ui/widget/barrage/BarrageView;->pause()V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v7}, Lcom/manhua/ui/widget/barrage/BarrageView;->reloadSync()V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {v7}, Lcom/manhua/ui/widget/barrage/BarrageView;->destory()V

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {v7}, Lcom/manhua/ui/widget/barrage/BarrageView;->initBarrageView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 13
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    if-eqz v0, :cond_c

    if-eq p1, v4, :cond_b

    if-eq p1, v5, :cond_a

    if-eq p1, v3, :cond_9

    if-eq p1, v2, :cond_8

    if-eq p1, v1, :cond_7

    goto/16 :goto_5

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    .line 15
    iget-object p1, p1, Lcom/apk/v9;->const:Lcom/apk/gg;

    if-eqz p1, :cond_c

    .line 16
    invoke-virtual {p1}, Lcom/apk/gg;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->resume()V

    goto :goto_2

    .line 18
    :cond_8
    iget-object p1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    .line 19
    iget-object p1, p1, Lcom/apk/v9;->const:Lcom/apk/gg;

    if-eqz p1, :cond_c

    .line 20
    invoke-virtual {p1}, Lcom/apk/gg;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->pause()V

    goto :goto_3

    .line 22
    :cond_9
    iget-object p1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    invoke-virtual {p0}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/n2;->throws(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apk/v9;->new(Ljava/lang/String;)V

    goto :goto_5

    .line 23
    :cond_a
    iget-object p1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    .line 24
    iget-object p1, p1, Lcom/apk/v9;->const:Lcom/apk/gg;

    if-eqz p1, :cond_c

    .line 25
    invoke-virtual {p1}, Lcom/apk/gg;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->destory()V

    goto :goto_4

    .line 27
    :cond_b
    iget-object p1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    invoke-virtual {p0}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/n2;->throws(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apk/v9;->try(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_5
    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/h2;->while:Lcom/apk/zg;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/zg;

    iget-object v1, p0, Lcom/apk/qz;->if:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/apk/zg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apk/h2;->while:Lcom/apk/zg;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/h2;->while:Lcom/apk/zg;

    .line 4
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/apk/h2;->while:Lcom/apk/zg;

    iget-object v1, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {v0, v1}, Lcom/apk/zg;->do(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public abstract()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "-1"

    .line 2
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget v1, p0, Lcom/apk/h2;->goto:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v0
.end method

.method public synthetic b()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    invoke-virtual {v0}, Lcom/apk/v9;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    invoke-virtual {v0}, Lcom/apk/v9;->for()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;->do()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public break(Landroid/widget/TextView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/apk/h2;->throw:Lcom/apk/import;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/h2;->d:Lcom/apk/import$try;

    invoke-virtual {v0, p1, v1, v2}, Lcom/apk/import;->break(Landroid/widget/TextView;Ljava/lang/String;Lcom/apk/import$try;)V

    :cond_1
    return-void
.end method

.method public synthetic c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    iget v2, p0, Lcom/apk/h2;->goto:I

    invoke-static {v0, v1, v2}, Lcom/biquge/ebook/app/bean/ReadFootprint;->addNovelFootprint(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public case(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/apk/n2;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/apk/n2;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f1000a0

    .line 3
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/biquge/ebook/app/bean/BookMark;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/BookMark;-><init>()V

    .line 5
    invoke-virtual {v0, p3}, Lcom/biquge/ebook/app/bean/BookMark;->setName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p2}, Lcom/biquge/ebook/app/bean/BookMark;->setChapterId(Ljava/lang/String;)V

    .line 7
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/biquge/ebook/app/bean/BookMark;->setReadPage(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p4}, Lcom/biquge/ebook/app/bean/BookMark;->setContent(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/BookMark;->setNovelId(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/BookMark;->setSaveTime(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    const p1, 0x7f100043

    .line 12
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    :goto_0
    return-void
.end method

.method public catch()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/h2;->this:Lcom/apk/g2;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/apk/g2;->do:Lcom/apk/gg;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/gg;->clear()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/apk/ca;->this:Lcom/apk/gg;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/apk/gg;->clear()V

    :cond_1
    return-void
.end method

.method public class(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/apk/h2;->z:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const p1, 0x7f100318

    .line 2
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    iget-object v1, p0, Lcom/apk/qz;->if:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/apk/b1;->if(Landroid/content/Context;)Lcom/apk/b1;

    new-instance v1, Lcom/apk/h2$if;

    move-object v2, v1

    move-object v3, p0

    move v4, p4

    move-object v5, p3

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/apk/h2$if;-><init>(Lcom/apk/h2;ZLjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public const()I
    .locals 2

    const-string v0, "auto_read_type"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public continue(Z)Z
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v2, "-1"

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 2
    :try_start_1
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_2

    .line 3
    iget v4, p0, Lcom/apk/h2;->goto:I

    iget-object v5, p0, Lcom/apk/h2;->this:Lcom/apk/g2;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v5, :cond_1

    .line 4
    :try_start_2
    iget-object v6, v5, Lcom/apk/g2;->do:Lcom/apk/gg;

    if-eqz v6, :cond_0

    .line 5
    iget-object v5, v5, Lcom/apk/g2;->do:Lcom/apk/gg;

    const-string v6, "1"

    invoke-static {v6, v1}, Lcom/apk/g2;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ne v4, v1, :cond_3

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 8
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    if-nez v1, :cond_5

    .line 9
    :try_start_4
    invoke-virtual {p0}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object p1

    .line 10
    iget-object v4, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v4

    if-eqz p1, :cond_5

    if-eqz v4, :cond_5

    .line 11
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v2

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-ne v2, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :catch_1
    move-exception p1

    move v0, v1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 12
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_4
    move v1, v0

    :cond_5
    return v1
.end method

.method public d(Ljava/util/List;I)V
    .locals 10

    const-string v0, ""

    const-string v1, "SP_SHOW_CHAPTER_CHANGE_SOURCE_POPUP_KEY"

    const-string v2, "SP_SHOW_CHAPTER_RELOAD_POPUP_KEY"

    const-string v3, "Novel"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2
    iget-object v8, p0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    invoke-virtual {v8, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    iget-object v8, p0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    invoke-virtual {p1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    iget-object p1, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {p1, p2}, Lcom/manhua/ui/widget/PageRecyclerView;->scrollToPosition(I)V

    .line 5
    iget-object p1, p0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    if-ne p1, v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object v8, p0, Lcom/apk/h2;->default:Lcom/biquge/ebook/app/bean/ReadPostion;

    if-eqz v8, :cond_3

    .line 7
    iget-object v8, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    iget-object v9, p0, Lcom/apk/h2;->default:Lcom/biquge/ebook/app/bean/ReadPostion;

    invoke-virtual {v9}, Lcom/biquge/ebook/app/bean/ReadPostion;->getReadPostion()I

    move-result v9

    invoke-virtual {v8, v5, v9}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_2

    .line 8
    :cond_1
    iget-object v8, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    .line 9
    iget-object v8, v8, Lcom/apk/v9;->try:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 10
    iget-object v8, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    .line 11
    iget-object v8, v8, Lcom/apk/v9;->try:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object p1, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    iget-object v8, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    invoke-virtual {p1, v8}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 13
    iget-object p1, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {p1, p2}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCurrentItem(I)V

    .line 14
    iget-object p1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    invoke-virtual {p1}, Lcom/apk/v9;->getCount()I

    move-result p1

    if-ne p1, v4, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 15
    :goto_1
    invoke-virtual {p0}, Lcom/apk/h2;->default()I

    move-result v8

    if-ne v8, v7, :cond_3

    .line 16
    iget-object v8, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast v8, Lcom/apk/l2;

    invoke-interface {v8}, Lcom/apk/l2;->c()V

    .line 17
    invoke-virtual {p0, p2}, Lcom/apk/h2;->s(I)V

    .line 18
    :cond_3
    :goto_2
    invoke-virtual {p0, p2}, Lcom/apk/h2;->E(I)V

    .line 19
    iget-object p2, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast p2, Lcom/apk/l2;

    invoke-interface {p2, v5, p1}, Lcom/apk/l2;->do(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {p0}, Lcom/apk/h2;->strictfp()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 21
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object p1

    .line 22
    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object p2

    .line 23
    iget-object v8, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 24
    invoke-static {v8}, Lcom/apk/h2;->throws(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 25
    invoke-virtual {p1, v3, p2, v8}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->loadBarrageData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_4
    invoke-virtual {p0, v5}, Lcom/apk/h2;->H(Z)V

    .line 27
    iget-boolean p1, p0, Lcom/apk/h2;->w:Z

    if-eqz p1, :cond_5

    .line 28
    iget-object p1, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1}, Lcom/apk/l2;->package()V

    .line 29
    :cond_5
    iget-boolean p1, p0, Lcom/apk/h2;->x:Z

    if-eqz p1, :cond_6

    .line 30
    iget-object p1, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1}, Lcom/apk/l2;->d()V

    .line 31
    :cond_6
    invoke-virtual {p0}, Lcom/apk/h2;->static()Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 32
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->isHasContent()Z

    move-result p1

    if-nez p1, :cond_a

    .line 33
    iget-object p1, p0, Lcom/apk/h2;->protected:Ljava/util/Map;

    if-nez p1, :cond_7

    .line 34
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/apk/h2;->protected:Ljava/util/Map;

    .line 35
    :cond_7
    iget-object p1, p0, Lcom/apk/h2;->protected:Ljava/util/Map;

    .line 36
    iget-object p2, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 37
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 38
    iget-object p1, p0, Lcom/apk/h2;->protected:Ljava/util/Map;

    .line 39
    iget-object p2, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 40
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_3

    .line 42
    :cond_8
    throw v6

    .line 43
    :cond_9
    :goto_3
    invoke-static {v1, v4}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_12

    goto/16 :goto_5

    .line 44
    :cond_a
    invoke-virtual {p0}, Lcom/apk/h2;->instanceof()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 45
    iget p1, p0, Lcom/apk/h2;->volatile:I

    if-gt p1, v7, :cond_12

    .line 46
    invoke-static {v2, v4}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_12

    goto/16 :goto_6

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_0
    move-exception p1

    .line 47
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    invoke-virtual {p0}, Lcom/apk/h2;->strictfp()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 49
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object p1

    .line 50
    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object p2

    .line 51
    iget-object v8, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 52
    invoke-static {v8}, Lcom/apk/h2;->throws(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 53
    invoke-virtual {p1, v3, p2, v8}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->loadBarrageData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_b
    invoke-virtual {p0, v5}, Lcom/apk/h2;->H(Z)V

    .line 55
    iget-boolean p1, p0, Lcom/apk/h2;->w:Z

    if-eqz p1, :cond_c

    .line 56
    iget-object p1, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1}, Lcom/apk/l2;->package()V

    .line 57
    :cond_c
    iget-boolean p1, p0, Lcom/apk/h2;->x:Z

    if-eqz p1, :cond_d

    .line 58
    iget-object p1, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1}, Lcom/apk/l2;->d()V

    .line 59
    :cond_d
    invoke-virtual {p0}, Lcom/apk/h2;->static()Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 60
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->isHasContent()Z

    move-result p1

    if-nez p1, :cond_11

    .line 61
    iget-object p1, p0, Lcom/apk/h2;->protected:Ljava/util/Map;

    if-nez p1, :cond_e

    .line 62
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/apk/h2;->protected:Ljava/util/Map;

    .line 63
    :cond_e
    iget-object p1, p0, Lcom/apk/h2;->protected:Ljava/util/Map;

    .line 64
    iget-object p2, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 65
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 66
    iget-object p1, p0, Lcom/apk/h2;->protected:Ljava/util/Map;

    .line 67
    iget-object p2, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 68
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_f

    goto :goto_4

    .line 70
    :cond_f
    throw v6

    .line 71
    :cond_10
    :goto_4
    invoke-static {v1, v4}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 72
    :goto_5
    iget-object p1, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1, v4}, Lcom/apk/l2;->private(Z)V

    goto :goto_7

    .line 73
    :cond_11
    invoke-virtual {p0}, Lcom/apk/h2;->instanceof()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 74
    iget p1, p0, Lcom/apk/h2;->volatile:I

    if-gt p1, v7, :cond_12

    .line 75
    invoke-static {v2, v4}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 76
    :goto_6
    iget-object p1, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1, v5}, Lcom/apk/l2;->private(Z)V

    .line 77
    :cond_12
    :goto_7
    iget-object p1, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1, v5, v5}, Lcom/apk/l2;->do(ZZ)V

    return-void

    .line 78
    :goto_8
    invoke-virtual {p0}, Lcom/apk/h2;->strictfp()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 79
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object p2

    .line 80
    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v8

    .line 81
    iget-object v9, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 82
    invoke-static {v9}, Lcom/apk/h2;->throws(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 83
    invoke-virtual {p2, v3, v8, v9}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->loadBarrageData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_13
    invoke-virtual {p0, v5}, Lcom/apk/h2;->H(Z)V

    .line 85
    iget-boolean p2, p0, Lcom/apk/h2;->w:Z

    if-eqz p2, :cond_14

    .line 86
    iget-object p2, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast p2, Lcom/apk/l2;

    invoke-interface {p2}, Lcom/apk/l2;->package()V

    .line 87
    :cond_14
    iget-boolean p2, p0, Lcom/apk/h2;->x:Z

    if-eqz p2, :cond_15

    .line 88
    iget-object p2, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast p2, Lcom/apk/l2;

    invoke-interface {p2}, Lcom/apk/l2;->d()V

    .line 89
    :cond_15
    invoke-virtual {p0}, Lcom/apk/h2;->static()Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 90
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/ChapterBean;->isHasContent()Z

    move-result p2

    if-nez p2, :cond_19

    .line 91
    iget-object p2, p0, Lcom/apk/h2;->protected:Ljava/util/Map;

    if-nez p2, :cond_16

    .line 92
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/apk/h2;->protected:Ljava/util/Map;

    .line 93
    :cond_16
    iget-object p2, p0, Lcom/apk/h2;->protected:Ljava/util/Map;

    .line 94
    iget-object v2, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 95
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    .line 96
    iget-object p2, p0, Lcom/apk/h2;->protected:Ljava/util/Map;

    .line 97
    iget-object v2, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 98
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p2

    if-eqz p2, :cond_17

    goto :goto_9

    .line 100
    :cond_17
    throw v6

    .line 101
    :cond_18
    :goto_9
    invoke-static {v1, v4}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 102
    iget-object p2, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast p2, Lcom/apk/l2;

    invoke-interface {p2, v4}, Lcom/apk/l2;->private(Z)V

    goto :goto_a

    .line 103
    :cond_19
    invoke-virtual {p0}, Lcom/apk/h2;->instanceof()Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 104
    iget p2, p0, Lcom/apk/h2;->volatile:I

    if-gt p2, v7, :cond_1a

    .line 105
    invoke-static {v2, v4}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 106
    iget-object p2, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast p2, Lcom/apk/l2;

    invoke-interface {p2, v5}, Lcom/apk/l2;->private(Z)V

    .line 107
    :cond_1a
    :goto_a
    throw p1
.end method

.method public default()I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "read_page_animation"

    .line 1
    invoke-static {v1, v0}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public do()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/h2;->l:Z

    .line 2
    invoke-virtual {p0}, Lcom/apk/h2;->protected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->setScrollState(Z)V

    :cond_0
    return-void
.end method

.method public synthetic e(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/h2;->s(I)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/apk/h2;->v:Z

    return-void
.end method

.method public else(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/o;->new()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/apk/h2$try;

    invoke-direct {v1, p0, p1}, Lcom/apk/h2$try;-><init>(Lcom/apk/h2;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final extends()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apk/v9;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(ILjava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->remove(I)V

    .line 3
    iget-object p1, p0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    add-int/lit8 p1, p1, 0x1

    .line 5
    iget-object v1, v1, Lcom/apk/v9;->try:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    .line 7
    iget-object p1, p1, Lcom/apk/v9;->try:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object p1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_0
    invoke-virtual {p0, v0}, Lcom/apk/h2;->H(Z)V

    return-void

    :goto_1
    invoke-virtual {p0, v0}, Lcom/apk/h2;->H(Z)V

    .line 11
    throw p1
.end method

.method public final(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;
    .locals 5

    const-string v0, "LOAD_FAILED"

    const-string v1, ""

    if-eqz p1, :cond_4

    .line 1
    iget-object v2, p0, Lcom/apk/h2;->this:Lcom/apk/g2;

    if-nez v2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getValues()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 9
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_2
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    return-object v1
.end method

.method public final finally()Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/h2;->new:Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/CollectBook;->isWebSite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/nd;->class(Ljava/lang/String;)Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    return-object v0
.end method

.method public g(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    .line 4
    iget-object v1, v1, Lcom/apk/v9;->try:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    invoke-virtual {p0, v0}, Lcom/apk/h2;->H(Z)V

    return-void

    :goto_1
    invoke-virtual {p0, v0}, Lcom/apk/h2;->H(Z)V

    .line 8
    throw p1
.end method

.method public goto(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/apk/h2;->return:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "-2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "-1"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public h(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    invoke-virtual {v1, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(ILjava/util/Collection;)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {v1, p1}, Lcom/manhua/ui/widget/PageRecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    .line 8
    iget-object v1, v1, Lcom/apk/v9;->try:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 9
    iget-object v1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 11
    iget-object v1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    invoke-virtual {v1}, Lcom/apk/v9;->getCount()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {v1, p1}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/apk/h2;->H(Z)V

    return-void

    :goto_1
    invoke-virtual {p0, v0}, Lcom/apk/h2;->H(Z)V

    .line 15
    throw p1
.end method

.method public final i(Lcom/biquge/ebook/app/bean/ChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;
    .locals 3

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/BookChapter;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/BookChapter;->setNovelid(Ljava/lang/String;)V

    const-string v1, ""

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setChapterId(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setChapterName(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setValues(Ljava/util/Vector;)V

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setAllPage(I)V

    .line 7
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setReadPage(I)V

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNeed_share()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/BookChapter;->setNeed_share(Ljava/lang/String;)V

    const-string p1, "LOAD_CHAPTER_DEFAULT_CONTENT"

    .line 9
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/BookChapter;->setUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public if()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/apk/h2;->l:Z

    .line 2
    invoke-virtual {p0}, Lcom/apk/h2;->protected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->setScrollState(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/apk/h2;->K()V

    :cond_0
    return-void
.end method

.method public final implements()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/h2;->default()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/apk/h2;->native(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object p1

    return-object p1
.end method

.method public final instanceof()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public interface(Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/h2;->static()Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/apk/h2;->volatile(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Z

    move-result p1

    return p1
.end method

.method public final j(Lcom/biquge/ebook/app/bean/ChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;
    .locals 4

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/BookChapter;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/BookChapter;->setNovelid(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/BookChapter;->setChapterId(Ljava/lang/String;)V

    const-string v1, ""

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setChapterName(Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const-string v3, "LOAD_FAILED"

    .line 6
    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setValues(Ljava/util/Vector;)V

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setAllPage(I)V

    .line 9
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setReadPage(I)V

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNeed_share()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/BookChapter;->setNeed_share(Ljava/lang/String;)V

    return-object v0
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/BookChapter;
    .locals 3

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/BookChapter;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/BookChapter;->setNovelid(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOAD_AD_CHAPTER_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/BookChapter;->setChapterId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/biquge/ebook/app/bean/BookChapter;->setChapterName(Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    const-string p2, "LOAD_AD_CHAPTER_CONTENT"

    .line 6
    invoke-virtual {p1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/BookChapter;->setValues(Ljava/util/Vector;)V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/BookChapter;->setAllPage(I)V

    .line 9
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/BookChapter;->setReadPage(I)V

    .line 10
    invoke-virtual {v0, p2}, Lcom/biquge/ebook/app/bean/BookChapter;->setUrl(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 11
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/BookChapter;->setItemType(I)V

    return-object v0
.end method

.method public final l(Lcom/biquge/ebook/app/bean/ChapterBean;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biquge/ebook/app/bean/ChapterBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/BookChapter;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/apk/h2;->m(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biquge/ebook/app/bean/ChapterBean;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/BookChapter;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_b

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->isHasContent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    iget-boolean v3, p0, Lcom/apk/h2;->e:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/apk/h2;->y:Z

    if-nez v3, :cond_1

    const-string v3, "-1"

    .line 8
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    iget-object v3, p0, Lcom/apk/h2;->throw:Lcom/apk/import;

    sget-object v6, Lcom/apk/hf;->do:Lcom/apk/hf;

    invoke-virtual {v3, v6}, Lcom/apk/import;->new(Lcom/apk/hf;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    new-instance v3, Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-direct {v3}, Lcom/biquge/ebook/app/bean/BookChapter;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biquge/ebook/app/bean/BookChapter;->setNovelid(Ljava/lang/String;)V

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LOAD_AD_CHAPTER_ID"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biquge/ebook/app/bean/BookChapter;->setChapterId(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setChapterName(Ljava/lang/String;)V

    .line 15
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    const-string v7, "LOAD_AD_CHAPTER_CONTENT"

    .line 16
    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v3, v6}, Lcom/biquge/ebook/app/bean/BookChapter;->setValues(Ljava/util/Vector;)V

    .line 18
    invoke-virtual {v3, v5}, Lcom/biquge/ebook/app/bean/BookChapter;->setAllPage(I)V

    .line 19
    invoke-virtual {v3, v5}, Lcom/biquge/ebook/app/bean/BookChapter;->setReadPage(I)V

    .line 20
    invoke-virtual {v3, v7}, Lcom/biquge/ebook/app/bean/BookChapter;->setUrl(Ljava/lang/String;)V

    const/4 v6, 0x2

    .line 21
    invoke-virtual {v3, v6}, Lcom/biquge/ebook/app/bean/BookChapter;->setItemType(I)V

    .line 22
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iput v4, p0, Lcom/apk/h2;->interface:I

    .line 24
    iget-object v3, p0, Lcom/apk/h2;->throw:Lcom/apk/import;

    invoke-virtual {v3}, Lcom/apk/import;->try()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/apk/h2;->implements:Lcom/biquge/ebook/app/bean/BookChapter;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v3

    iget-object v6, p0, Lcom/apk/h2;->implements:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v6

    if-ne v3, v6, :cond_1

    .line 25
    iget-object v3, p0, Lcom/apk/h2;->switch:Landroid/os/Handler;

    new-instance v6, Lcom/apk/y1;

    invoke-direct {v6, p0}, Lcom/apk/y1;-><init>(Lcom/apk/h2;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    :cond_1
    iget-object v3, p0, Lcom/apk/h2;->this:Lcom/apk/g2;

    invoke-virtual {v3, v1}, Lcom/apk/g2;->for(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 27
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 28
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    if-eqz v3, :cond_3

    .line 29
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 30
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNovelId()Ljava/lang/String;

    move-result-object v3

    iget v6, p0, Lcom/apk/h2;->goto:I

    invoke-virtual {p0, v3, v1, v2, v6}, Lcom/apk/h2;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 31
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 32
    :cond_4
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNovelId()Ljava/lang/String;

    move-result-object v3

    iget v6, p0, Lcom/apk/h2;->goto:I

    invoke-virtual {p0, v3, v1, v2, v6}, Lcom/apk/h2;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/apk/h2;->this:Lcom/apk/g2;

    invoke-virtual {v3, v1}, Lcom/apk/g2;->for(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 35
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Vector;

    if-eqz v7, :cond_6

    .line 37
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 38
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 39
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_3
    if-ge v7, v3, :cond_8

    .line 40
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Vector;

    .line 41
    new-instance v10, Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-direct {v10}, Lcom/biquge/ebook/app/bean/BookChapter;-><init>()V

    .line 42
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNovelId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/biquge/ebook/app/bean/BookChapter;->setNovelid(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v10, v1}, Lcom/biquge/ebook/app/bean/BookChapter;->setChapterId(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v10, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setChapterName(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/biquge/ebook/app/bean/BookChapter;->setUrl(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v10, v9}, Lcom/biquge/ebook/app/bean/BookChapter;->setValues(Ljava/util/Vector;)V

    .line 47
    invoke-virtual {v10, v3}, Lcom/biquge/ebook/app/bean/BookChapter;->setAllPage(I)V

    .line 48
    invoke-virtual {v10, v8}, Lcom/biquge/ebook/app/bean/BookChapter;->setReadPage(I)V

    .line 49
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNeed_share()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/biquge/ebook/app/bean/BookChapter;->setNeed_share(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v8, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 51
    :cond_8
    :try_start_2
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result p1

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    .line 52
    iget-object p1, p0, Lcom/apk/h2;->throw:Lcom/apk/import;

    invoke-virtual {p1}, Lcom/apk/import;->for()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_4
    add-int v1, p2, p1

    if-ge v4, v1, :cond_b

    .line 54
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/BookChapter;

    .line 55
    iget v2, p0, Lcom/apk/h2;->interface:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/apk/h2;->interface:I

    if-eqz v2, :cond_9

    .line 56
    iget-object v3, p0, Lcom/apk/h2;->throw:Lcom/apk/import;

    .line 57
    iget v3, v3, Lcom/apk/import;->goto:I

    .line 58
    rem-int/2addr v2, v3

    if-nez v2, :cond_9

    .line 59
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/apk/h2;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 p2, p2, 0x1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :catch_2
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 61
    :cond_a
    invoke-virtual {p0, p1}, Lcom/apk/h2;->i(Lcom/biquge/ebook/app/bean/ChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_5
    return-object v0
.end method

.method public declared-synchronized n(Z)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/PageRecyclerView;->setLoadMore(Z)V

    .line 2
    invoke-virtual {p0, v1}, Lcom/apk/h2;->H(Z)V

    .line 3
    iget-object v0, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    new-instance v2, Lcom/apk/h2$this;

    invoke-direct {v2, p0, p1, v0}, Lcom/apk/h2$this;-><init>(Lcom/apk/h2;ZLcom/biquge/ebook/app/bean/ChapterBean;)V

    iput-object v2, p0, Lcom/apk/h2;->i:Lcom/apk/h2$this;

    .line 5
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/o;->new()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {v2, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v1}, Lcom/apk/h2;->H(Z)V

    .line 7
    iget-object p1, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {p1, v1}, Lcom/manhua/ui/widget/PageRecyclerView;->setLoadMore(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final native(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;
    .locals 5

    const-string v0, "LOAD_AD_CHAPTER_ID"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, ""

    .line 2
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    .line 3
    :cond_0
    invoke-static {p1, p2}, Lcom/apk/g2;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v2, v4}, Lcom/biquge/ebook/app/bean/ChapterBean;->setHasContent(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v2
.end method

.method public declared-synchronized o(Z)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/h2;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/apk/h2;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/manhua/ui/widget/PageRecyclerView;->setLoadUp(Z)V

    .line 5
    invoke-virtual {p0, v2}, Lcom/apk/h2;->H(Z)V

    .line 6
    iget-object v0, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v2, Lcom/apk/h2$break;

    invoke-direct {v2, p0, p1, v0}, Lcom/apk/h2$break;-><init>(Lcom/apk/h2;ZLcom/biquge/ebook/app/bean/ChapterBean;)V

    iput-object v2, p0, Lcom/apk/h2;->h:Lcom/apk/h2$break;

    .line 8
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/o;->new()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {v2, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, v1}, Lcom/apk/h2;->H(Z)V

    .line 10
    iget-object p1, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {p1, v1}, Lcom/manhua/ui/widget/PageRecyclerView;->setLoadUp(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public p(Z)V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/h2;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/PageRecyclerView;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    invoke-virtual {v1}, Lcom/apk/v9;->getCount()I

    move-result v1

    :goto_1
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_4

    .line 4
    invoke-virtual {p0, v2}, Lcom/apk/h2;->continue(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1}, Lcom/apk/l2;->import()V

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {p0, v2}, Lcom/apk/h2;->n(Z)V

    goto :goto_2

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8
    invoke-virtual {p0}, Lcom/apk/h2;->z()V

    if-eqz p1, :cond_5

    .line 9
    iget-object p1, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_2

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PageRecyclerView;->scrollToPosition(I)V

    goto :goto_2

    .line 11
    :cond_6
    iget-object v1, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    add-int/2addr v0, v2

    invoke-virtual {v1, v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public protected()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/apk/h2;->return:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/apk/h2;->strictfp()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const-string v1, "SP_READ_SHOW_DARRAGE_KEY"

    .line 3
    invoke-static {v1, v0}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public public()Lcom/biquge/ebook/app/bean/BookChapter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/manhua/ui/widget/PageRecyclerView;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/apk/h2;->return(I)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/apk/h2;->return(I)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/h2;->throw:Lcom/apk/import;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/import;->case()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/h2;->this:Lcom/apk/g2;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Lcom/apk/g2;->do:Lcom/apk/gg;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/apk/gg;->clear()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/apk/h2;->switch:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    iput-object v1, p0, Lcom/apk/h2;->switch:Landroid/os/Handler;

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/apk/h2;->i:Lcom/apk/h2$this;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 11
    iput-object v1, p0, Lcom/apk/h2;->i:Lcom/apk/h2$this;

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/apk/h2;->h:Lcom/apk/h2$break;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 14
    iput-object v1, p0, Lcom/apk/h2;->h:Lcom/apk/h2$break;

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    if-eqz v0, :cond_6

    .line 16
    iget-object v1, v0, Lcom/apk/v9;->const:Lcom/apk/gg;

    if-eqz v1, :cond_6

    .line 17
    invoke-virtual {v1}, Lcom/apk/gg;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {v2}, Lcom/manhua/ui/widget/barrage/BarrageView;->destory()V

    goto :goto_0

    .line 19
    :cond_5
    iget-object v0, v0, Lcom/apk/v9;->const:Lcom/apk/gg;

    invoke-virtual {v0}, Lcom/apk/gg;->clear()V

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/apk/h2;->b:Lcom/apk/gg;

    if-eqz v0, :cond_7

    .line 21
    invoke-virtual {v0}, Lcom/apk/gg;->clear()V

    :cond_7
    return-void
.end method

.method public r(Landroid/view/ViewGroup;Z)V
    .locals 13

    if-nez p2, :cond_d

    .line 1
    iget-object p2, p0, Lcom/apk/h2;->p:Lcom/biquge/ebook/app/bean/BookChapter;

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/apk/h2;->r:I

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/apk/u0;->for:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object v0

    .line 7
    iget v0, v0, Lcom/apk/u0;->do:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget v2, p0, Lcom/apk/h2;->r:I

    invoke-virtual {p1, v0, v2, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/apk/h2;->s:Landroid/view/LayoutInflater;

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/apk/qz;->if:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/h2;->s:Landroid/view/LayoutInflater;

    :cond_3
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/apk/h2;->t:Landroid/widget/TextView;

    .line 12
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getItemType()I

    move-result v2

    const-string v3, "#08000000"

    const/16 v4, 0x8

    const v5, 0x7f090312

    const v6, 0x7f09030f

    const-string v7, "AD"

    const v8, 0x7f0c00db

    const/4 v9, 0x2

    const v10, 0x7f090310

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-ne v2, v9, :cond_7

    .line 13
    iget-object p2, p0, Lcom/apk/h2;->s:Landroid/view/LayoutInflater;

    invoke-virtual {p2, v8, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 14
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/apk/h2;->t:Landroid/widget/TextView;

    const v2, 0x7f100020

    new-array v6, v12, [Ljava/lang/Object;

    const-string v7, ""

    aput-object v7, v6, v1

    .line 16
    invoke-static {v2, v6}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/apk/h2;->t:Landroid/widget/TextView;

    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v2

    .line 18
    iget-object v2, v2, Lcom/apk/ca;->do:Landroid/graphics/Paint;

    .line 19
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    iget-object v0, p0, Lcom/apk/h2;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/apk/h2;->throw:Lcom/apk/import;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/apk/import;->try()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    iget-object v0, p0, Lcom/apk/h2;->throw:Lcom/apk/import;

    iget-object v1, p0, Lcom/apk/qz;->if:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/apk/import;->goto(Landroid/app/Activity;)V

    .line 24
    :try_start_0
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 25
    iget-object v1, p0, Lcom/apk/h2;->throw:Lcom/apk/import;

    .line 26
    iget-object v1, v1, Lcom/apk/import;->for:Ljava/lang/String;

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v1, 0x7f10029e

    .line 28
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    :cond_4
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/apk/qz;->if:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41880000    # 17.0f

    .line 30
    invoke-virtual {v2, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 31
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v3

    .line 32
    iget-object v3, v3, Lcom/apk/ca;->do:Landroid/graphics/Paint;

    .line 33
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 36
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41700000    # 15.0f

    .line 37
    invoke-static {v3}, Lcom/apk/eg;->catch(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 38
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 41
    :cond_5
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 42
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 43
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 44
    sget-object v2, Lcom/apk/d$do;->do:Lcom/apk/d;

    .line 45
    iget-object v3, p0, Lcom/apk/qz;->if:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0, v1}, Lcom/apk/d;->do(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    .line 46
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 48
    :cond_6
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 49
    :cond_7
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getItemType()I

    move-result v2

    const/4 v9, 0x3

    if-ne v2, v9, :cond_9

    .line 50
    iget-object p2, p0, Lcom/apk/h2;->s:Landroid/view/LayoutInflater;

    invoke-virtual {p2, v8, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 53
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 55
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 56
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 57
    sget-object v2, Lcom/apk/d$do;->do:Lcom/apk/d;

    .line 58
    iget-object v3, p0, Lcom/apk/qz;->if:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0, v1}, Lcom/apk/d;->do(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 61
    :cond_8
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 62
    :cond_9
    iget-object v2, p0, Lcom/apk/h2;->s:Landroid/view/LayoutInflater;

    const v3, 0x7f0c0124

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v2, "TXT"

    .line 63
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v2, 0x7f0900e0

    .line 64
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/widget/BookTitleTextView;

    .line 65
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/biquge/ebook/app/widget/BookTitleTextView;->setText(Ljava/lang/String;)V

    .line 66
    iget-boolean v2, p0, Lcom/apk/h2;->public:Z

    if-eqz v2, :cond_b

    .line 67
    iget-object v2, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    if-eqz v2, :cond_a

    .line 68
    invoke-virtual {v2, p2}, Lcom/apk/v9;->if(Lcom/biquge/ebook/app/bean/BookChapter;)Z

    move-result v2

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_b

    const/4 v1, 0x1

    :cond_b
    const v2, 0x7f0900e1

    .line 69
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/widget/ReadContentLayout;

    .line 70
    iget-object v3, p0, Lcom/apk/h2;->m:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Lcom/biquge/ebook/app/widget/ReadContentLayout;->setTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    iget-object v3, p0, Lcom/apk/h2;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/biquge/ebook/app/widget/ReadContentLayout;->setReloadClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3, v1}, Lcom/biquge/ebook/app/widget/ReadContentLayout;->do(Lcom/biquge/ebook/app/bean/BookChapter;Ljava/lang/String;Z)V

    const v1, 0x7f090110

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/widget/BookPageTextView;

    .line 74
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v2

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result p2

    invoke-virtual {v1, v2, p2}, Lcom/biquge/ebook/app/widget/BookPageTextView;->if(II)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/apk/h2;->F(Landroid/view/View;)V

    .line 76
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_c

    .line 77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 78
    :cond_c
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/apk/h2;->o:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public return(I)Lcom/biquge/ebook/app/bean/BookChapter;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/BookChapter;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    invoke-virtual {v1, p1}, Lcom/apk/v9;->do(I)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v0
.end method

.method public s(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/h2;->extends()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/h2;->p:Lcom/biquge/ebook/app/bean/BookChapter;

    .line 3
    iget-object p1, p0, Lcom/apk/h2;->o:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/apk/h2;->o:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    const/4 v0, 0x0

    .line 5
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->new:Lcom/apk/h2;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->getNextPage()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/apk/h2;->r(Landroid/view/ViewGroup;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static()Lcom/biquge/ebook/app/bean/ChapterBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v0

    return-object v0
.end method

.method public final strictfp()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/w0;->static()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/h2;->instanceof()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public super()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/h2;->for:Lcom/biquge/ebook/app/bean/Book;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/apk/h2;->new:Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public switch()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/manhua/ui/widget/PageRecyclerView;->getCurrentPosition()I

    move-result v1

    :cond_0
    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    :cond_2
    return v1
.end method

.method public synchronized(Ljava/util/List;I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    iget-object v1, p0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    iget-object p1, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {p1, p2}, Lcom/manhua/ui/widget/PageRecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    .line 6
    iget-object v1, v1, Lcom/apk/v9;->try:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    iget-object v1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    .line 8
    iget-object v1, v1, Lcom/apk/v9;->try:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object p1, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    iget-object v1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 10
    iget-object p1, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {p1, p2}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCurrentItem(I)V

    .line 11
    invoke-virtual {p0}, Lcom/apk/h2;->default()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1}, Lcom/apk/l2;->c()V

    .line 13
    invoke-virtual {p0, p2}, Lcom/apk/h2;->s(I)V

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/apk/h2;->E(I)V

    .line 15
    iget-object p1, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1, v0, v0}, Lcom/apk/l2;->do(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :goto_1
    iget-object p1, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast p1, Lcom/apk/l2;

    invoke-interface {p1, v0, v0}, Lcom/apk/l2;->do(ZZ)V

    return-void
.end method

.method public t()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/n0;->new()Lcom/apk/g;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swl/gg/sdk/TrAdSdk;->isRewardAdType(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "read"

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/f;->this()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/apk/g;->do()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v3}, Lcom/apk/e;->native(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swl/gg/sdk/TrAdSdk;->isFullAdType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-static {}, Lcom/apk/c;->while()Lcom/apk/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/f;->this()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 7
    :cond_2
    invoke-static {}, Lcom/apk/c;->while()Lcom/apk/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/apk/g;->do()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v3}, Lcom/apk/c;->native(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public this()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/h2;->implements:Lcom/biquge/ebook/app/bean/BookChapter;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getItemType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/apk/h2;->throw:Lcom/apk/import;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apk/import;->if(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-static {v0}, Lcom/apk/ze;->switch(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result v0

    const-string v1, "ContinueReadTView"

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/apk/h2;->throw:Lcom/apk/import;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/apk/import;->try()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apk/h2;->throw:Lcom/apk/import;

    .line 7
    iget-boolean v2, v0, Lcom/apk/import;->try:Z

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v2}, Lcom/apk/import;->if(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    if-eqz v0, :cond_3

    .line 11
    check-cast v0, Lcom/apk/l2;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/apk/l2;->case(Z)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v3

    invoke-static {v3}, Lcom/apk/n2;->throws(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p0, v0}, Lcom/apk/h2;->break(Landroid/widget/TextView;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v3

    invoke-static {v3}, Lcom/apk/n2;->throws(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0, v0}, Lcom/apk/h2;->break(Landroid/widget/TextView;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public throw(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p0, Lcom/apk/h2;->this:Lcom/apk/g2;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getValues()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-static {v0, v1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    const-string p1, "..."

    .line 6
    invoke-static {v0, p1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public transient()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/h2;->default()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u()V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/h2;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/apk/h2;->z()V

    .line 4
    iget-object v0, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/PageRecyclerView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    iget-object v2, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/manhua/ui/widget/PageRecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/apk/h2;->abstract()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    invoke-virtual {p0, v1}, Lcom/apk/h2;->o(Z)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_3

    .line 9
    iget-object v2, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/apk/h2;->abstract()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    invoke-virtual {p0, v1}, Lcom/apk/h2;->o(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 1
    :try_start_0
    iput p4, p0, Lcom/apk/h2;->goto:I

    .line 2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 3
    invoke-static {p1, p2}, Lcom/apk/g2;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {p4}, Lcom/biquge/ebook/app/bean/ChapterBean;->getName()Ljava/lang/String;

    move-result-object p3

    :cond_0
    move-object v3, p3

    .line 5
    iget-object v0, p0, Lcom/apk/h2;->this:Lcom/apk/g2;

    iget v4, p0, Lcom/apk/h2;->import:F

    iget v5, p0, Lcom/apk/h2;->native:F

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/apk/g2;->throw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public volatile(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/apk/h2;->return:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->isHasContent()Z

    move-result p2

    xor-int/2addr p2, v0

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNovelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/apk/n2;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v0
.end method

.method public w()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/o;->new()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/apk/h2$new;

    invoke-direct {v1, p0}, Lcom/apk/h2$new;-><init>(Lcom/apk/h2;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/apk/h2;->goto:I

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/apk/h2;->B(IZ)V

    :goto_0
    return-void
.end method

.method public while()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/h2;->for:Lcom/biquge/ebook/app/bean/Book;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/apk/h2;->new:Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/apk/h2;->try:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public x()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    invoke-virtual {v0}, Lcom/apk/v9;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {p0}, Lcom/apk/h2;->switch()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCurrentItem(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {p0}, Lcom/apk/h2;->switch()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/PageRecyclerView;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public y()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/apk/h2;->case:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getPid()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v2}, Lcom/apk/h2;->goto(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p0, v2}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v2, v4}, Lcom/apk/h2;->m(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Ljava/util/List;

    move-result-object v2

    .line 7
    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0, v1, v4}, Lcom/apk/h2;->m(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Ljava/util/List;

    move-result-object v2

    .line 10
    move-object v4, v2

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNid()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p0, v1}, Lcom/apk/h2;->goto(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {p0, v1}, Lcom/apk/h2;->import(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v1

    .line 15
    invoke-virtual {p0, v1}, Lcom/apk/h2;->l(Lcom/biquge/ebook/app/bean/ChapterBean;)Ljava/util/List;

    move-result-object v1

    .line 16
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    :cond_1
    iget v1, p0, Lcom/apk/h2;->goto:I

    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/2addr v3, v1

    .line 19
    invoke-virtual {p0}, Lcom/apk/h2;->implements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    iget-object v1, p0, Lcom/apk/h2;->const:Lcom/biquge/ebook/app/ui/book/adapter/BookRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 21
    iget-object v0, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {v0, v3}, Lcom/manhua/ui/widget/PageRecyclerView;->scrollToPosition(I)V

    goto :goto_1

    .line 22
    :cond_3
    iget-object v1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    .line 23
    iget-object v1, v1, Lcom/apk/v9;->try:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 24
    iget-object v1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    .line 25
    iget-object v1, v1, Lcom/apk/v9;->try:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    iget-object v0, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    iget-object v1, p0, Lcom/apk/h2;->catch:Lcom/apk/v9;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 27
    iget-object v0, p0, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {v0, v3}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCurrentItem(I)V

    .line 28
    invoke-virtual {p0}, Lcom/apk/h2;->default()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 29
    iget-object v0, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast v0, Lcom/apk/l2;

    invoke-interface {v0}, Lcom/apk/l2;->c()V

    .line 30
    invoke-virtual {p0, v3}, Lcom/apk/h2;->s(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final z()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/apk/h2;->throws:I

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/apk/h2;->default:Lcom/biquge/ebook/app/bean/ReadPostion;

    .line 3
    iget-object v1, p0, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    .line 4
    iget-object v1, v1, Lcom/manhua/ui/widget/PageRecyclerView;->if:Lcom/apk/u20;

    if-eqz v1, :cond_0

    .line 5
    iput v0, v1, Lcom/apk/u20;->super:I

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v1

    new-instance v2, Lcom/apk/r1;

    invoke-direct {v2, v0}, Lcom/apk/r1;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v0, v1, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
