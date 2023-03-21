.class public final Lcom/apk/ff;
.super Ljava/lang/Object;
.source "CommonsUtils.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic do:Ljava/util/List;

.field public final synthetic if:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ff;->do:Ljava/util/List;

    iput-object p2, p0, Lcom/apk/ff;->if:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/apk/ff;->do:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/biquge/ebook/app/bean/HomenavmenuBean;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/HomenavmenuBean;->getLandingtype()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/HomenavmenuBean;->getTo()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/apk/ff;->if:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/swl/gg/ggs/SwlAdHelper;->setAdClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/HomenavmenuBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/HomenavmenuBean;->getVer()I

    move-result p2

    const-string v1, "SP_HOME_MENU_VERSION_CODE_KEY"

    .line 6
    invoke-static {v1, v0}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v1, v0, p2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    const-string p1, "REFRESH_BOOKSTORE_RED_TAG_KEY"

    .line 9
    invoke-static {p1, v3}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
