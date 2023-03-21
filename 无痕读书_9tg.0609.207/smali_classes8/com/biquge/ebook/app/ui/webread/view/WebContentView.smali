.class public Lcom/biquge/ebook/app/ui/webread/view/WebContentView;
.super Landroid/widget/FrameLayout;
.source "WebContentView.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$do;


# instance fields
.field public break:Ljava/lang/String;

.field public case:Lcom/apk/jd;

.field public catch:Z

.field public class:Z

.field public const:Z

.field public do:Landroid/widget/EditText;

.field public else:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;

.field public final:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

.field public for:Z

.field public goto:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;

.field public if:Z

.field public final import:Lcom/apk/md;

.field public mGoBackView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09064a
    .end annotation
.end field

.field public mGoForwardView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09064b
    .end annotation
.end field

.field public mTranscodingLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090641
    .end annotation
.end field

.field public mWebBookDetailView:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09061e
    .end annotation
.end field

.field public mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090622
    .end annotation
.end field

.field public new:Z

.field public super:Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;

.field public this:Z

.field public throw:Lcom/apk/qd;

.field public try:Z

.field public final while:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$for;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->if:Z

    .line 3
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->for:Z

    .line 4
    new-instance p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$do;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->while:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$for;

    .line 5
    new-instance p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$if;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$if;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->import:Lcom/apk/md;

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0139

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 7
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    const/4 p1, 0x0

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 9
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {p2}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {p2}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    iget-boolean v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->if:Z

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 11
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {p2, p0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->setDownloadListener(Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$do;)V

    .line 12
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 13
    iget-object p2, p2, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    .line 14
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v1, 0x1

    .line 15
    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 16
    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 17
    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 18
    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 19
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 20
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 21
    iget-object p2, p2, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 22
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    new-instance p2, Lcom/apk/je;

    invoke-direct {p2, p0}, Lcom/apk/je;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V

    invoke-virtual {p1, p2}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->setWebViewBackForwardListener(Lcom/apk/o1;)V

    .line 23
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    new-instance p2, Lcom/apk/ke;

    invoke-direct {p2, p0}, Lcom/apk/ke;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V

    invoke-virtual {p1, p2}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->setWebViewListener(Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;)V

    .line 24
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebBookDetailView:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    new-instance p2, Lcom/apk/le;

    invoke-direct {p2, p0}, Lcom/apk/le;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V

    invoke-virtual {p1, p2}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->setWebCodeCallback(Lcom/apk/jd;)V

    .line 25
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebBookDetailView:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    new-instance p2, Lcom/apk/me;

    invoke-direct {p2, p0}, Lcom/apk/me;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V

    invoke-virtual {p1, p2}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->setReloadListener(Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView$if;)V

    .line 26
    new-instance p1, Lcom/apk/qd;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->import:Lcom/apk/md;

    invoke-direct {p1, p2, v0}, Lcom/apk/qd;-><init>(Landroid/app/Activity;Lcom/apk/md;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->throw:Lcom/apk/qd;

    return-void
.end method

.method public static synthetic break(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic case(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->goto(Z)V

    return-void
.end method

.method public static do(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->goto(Z)V

    return-void
.end method

.method public static synthetic for(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->this()V

    return-void
.end method

.method private getBookId()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->getCurUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "web_"

    .line 3
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static synthetic if(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->else()V

    return-void
.end method

.method public static new(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/apk/lv;

    invoke-direct {v2}, Lcom/apk/lv;-><init>()V

    .line 4
    new-instance v3, Lcom/apk/pe;

    invoke-direct {v3, p0, v0}, Lcom/apk/pe;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;Ljava/lang/String;)V

    .line 5
    iput-object v3, v2, Lcom/apk/lv;->throw:Lcom/apk/yv;

    const v3, 0x7f1003e9

    .line 6
    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f10018e

    .line 7
    invoke-static {v4}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f100190

    .line 8
    invoke-static {v5}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/apk/oe;

    invoke-direct {v6, p0, v0}, Lcom/apk/oe;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;Ljava/lang/String;)V

    const/4 p0, 0x0

    const v7, 0x7f0c00a5

    .line 9
    sget-boolean v8, Lcom/apk/zu;->try:Z

    .line 10
    iput-boolean v8, v2, Lcom/apk/lv;->continue:Z

    .line 11
    new-instance v8, Lcom/lxj/xpopup/impl/ConfirmPopupView;

    invoke-direct {v8, v1, v7}, Lcom/lxj/xpopup/impl/ConfirmPopupView;-><init>(Landroid/content/Context;I)V

    .line 12
    iput-object v3, v8, Lcom/lxj/xpopup/impl/ConfirmPopupView;->else:Ljava/lang/CharSequence;

    .line 13
    iput-object v0, v8, Lcom/lxj/xpopup/impl/ConfirmPopupView;->goto:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 14
    iput-object v0, v8, Lcom/lxj/xpopup/impl/ConfirmPopupView;->this:Ljava/lang/CharSequence;

    .line 15
    iput-object v4, v8, Lcom/lxj/xpopup/impl/ConfirmPopupView;->break:Ljava/lang/CharSequence;

    .line 16
    iput-object v5, v8, Lcom/lxj/xpopup/impl/ConfirmPopupView;->catch:Ljava/lang/CharSequence;

    .line 17
    iput-object v0, v8, Lcom/lxj/xpopup/impl/ConfirmPopupView;->do:Lcom/apk/sv;

    .line 18
    iput-object v6, v8, Lcom/lxj/xpopup/impl/ConfirmPopupView;->if:Lcom/apk/uv;

    .line 19
    iput-boolean p0, v8, Lcom/lxj/xpopup/impl/ConfirmPopupView;->const:Z

    .line 20
    iput-object v2, v8, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 21
    invoke-virtual {v8}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method

.method public static try(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 1
    invoke-static {p1}, Lcom/apk/n2;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;-><init>()V

    invoke-static {v0}, Lcom/apk/nd;->native(Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/Book;->setId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/biquge/ebook/app/bean/Book;->setName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/Book;->setExternalUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 6
    invoke-static {v0, p1}, Lcom/apk/n2;->u(Lcom/biquge/ebook/app/bean/Book;Z)V

    .line 7
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->goto:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    .line 9
    :cond_0
    invoke-static {}, Lcom/apk/ze;->V()V

    :cond_1
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 10
    throw p0
.end method


# virtual methods
.method public catch(Ljava/lang/String;ZZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->break:Ljava/lang/String;

    .line 2
    iput-boolean p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->this:Z

    .line 3
    iput-boolean p3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->catch:Z

    .line 4
    iput-boolean p4, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->const:Z

    const/4 p2, 0x1

    if-nez p4, :cond_0

    const-string p4, "https://boxnovel.baidu.com"

    .line 5
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iput-boolean p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->class:Z

    const/4 p3, 0x1

    .line 7
    :cond_0
    iput-boolean p3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->if:Z

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    iget-boolean p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->if:Z

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->this()V

    return-void
.end method

.method public final class(Ljava/lang/String;ZZ)V
    .locals 11

    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 1
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebBookDetailView:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    if-eqz v1, :cond_1

    .line 2
    iget-object v2, v1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mWebLoadingView:Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;->do()V

    .line 4
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->throw:Lcom/apk/qd;

    if-eqz v4, :cond_5

    if-eqz v4, :cond_4

    .line 6
    invoke-static {p1}, Lcom/apk/nd;->const(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getInfo_urlExpression()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/apk/n2;->goto(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 8
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_urlExpression()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/apk/n2;->goto(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    move v6, v0

    move v7, v1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-nez v6, :cond_3

    if-eqz v7, :cond_5

    :cond_3
    const-wide/32 v0, 0x2bf20

    .line 9
    sget-object v2, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v10, Lcom/apk/od;

    move-object v3, v10

    move-object v5, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/apk/od;-><init>(Lcom/apk/qd;Ljava/lang/String;ZZZZ)V

    invoke-static {p1, v0, v1, v2, v10}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 10
    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method public final const()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->new:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->final:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->getCurUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setOpenUrl(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebBookDetailView:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->final:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 5
    iput-object v2, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->do:Landroid/app/Activity;

    .line 6
    iput-object v3, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 7
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->new()V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebBookDetailView:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mTranscodingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->try:Z

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->super:Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->getCurUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setReadChapterUrl(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->super:Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setChapterUrl(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c0(Landroid/app/Activity;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mTranscodingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public continue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p3, ""

    .line 1
    iget-boolean p4, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->for:Z

    if-nez p4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const-string p5, "UTF-8"

    if-nez p4, :cond_2

    .line 5
    :try_start_0
    invoke-static {p2, p5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 6
    invoke-virtual {p4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 7
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    invoke-static {p1, p5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 9
    :cond_3
    :goto_1
    invoke-static {p3}, Lcom/apk/ze;->J(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    invoke-static {p2}, Lcom/apk/ze;->J(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, ".zip"

    .line 11
    invoke-static {p2, p1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 12
    :cond_4
    invoke-static {p2}, Lcom/apk/ze;->I(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, ".txt"

    .line 13
    invoke-static {p2, p1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 14
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p4, 0x7f10010c

    const/4 p5, 0x1

    new-array p5, p5, [Ljava/lang/Object;

    const/4 p6, 0x0

    aput-object p2, p5, p6

    invoke-static {p4, p5}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$for;

    invoke-direct {p5, p0, p2, p3}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$for;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p1, p4, p5, p2, p6}, Lcom/apk/eg;->i(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    return-void
.end method

.method public final else()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebBookDetailView:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebBookDetailView:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->case:Lcom/apk/jd;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/apk/jd;->continue()V

    :cond_1
    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if()Z

    return-void
.end method

.method public getCurUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->break:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->break:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    return-object v0
.end method

.method public final goto(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mGoBackView:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mGoBackView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mGoForwardView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09064a,
            0x7f09064b,
            0x7f09064d,
            0x7f0905b0,
            0x7f09064c
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0905b0

    if-eq p1, v0, :cond_a

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 2
    :pswitch_0
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->new:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->try:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->case()V

    goto/16 :goto_3

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->this()V

    goto/16 :goto_3

    .line 5
    :pswitch_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebBookDetailView:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->final:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/n2;->f(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->getCurUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/n2;->g(Ljava/lang/String;)Z

    move-result p1

    .line 9
    :goto_1
    new-instance v0, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->if:Z

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->while:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup$for;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;-><init>(Landroid/content/Context;ZZLcom/biquge/ebook/app/ui/view/WebReadMenuPopup$for;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->goto:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 11
    new-instance p1, Lcom/apk/lv;

    invoke-direct {p1}, Lcom/apk/lv;-><init>()V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->goto:Lcom/biquge/ebook/app/ui/view/WebReadMenuPopup;

    .line 13
    instance-of v1, v0, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v1, :cond_4

    .line 14
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 15
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_2

    .line 16
    :cond_4
    instance-of v1, v0, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz v1, :cond_5

    .line 17
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 18
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_2

    .line 19
    :cond_5
    instance-of v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz v1, :cond_6

    .line 20
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 21
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_2

    .line 22
    :cond_6
    instance-of v1, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz v1, :cond_7

    .line 23
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 24
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_2

    .line 25
    :cond_7
    instance-of v1, v0, Lcom/lxj/xpopup/core/PositionPopupView;

    if-eqz v1, :cond_8

    .line 26
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 27
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    .line 28
    :cond_8
    :goto_2
    iput-object p1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 29
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto :goto_3

    .line 30
    :pswitch_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebBookDetailView:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 31
    :cond_9
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 32
    iget-object v0, p1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 33
    iget-object v0, p1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 34
    iget-object v0, p1, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->case:Lcom/apk/o1;

    if-eqz v0, :cond_b

    .line 35
    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->getWebView()Lcom/apk/ih;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    check-cast v0, Lcom/apk/je;

    .line 36
    iget-object p1, v0, Lcom/apk/je;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->do(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V

    goto :goto_3

    .line 37
    :pswitch_3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->else()V

    goto :goto_3

    .line 38
    :cond_a
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->const()V

    :cond_b
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7f09064a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setWebCodeCallback(Lcom/apk/jd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->case:Lcom/apk/jd;

    return-void
.end method

.method public setWebViewListener(Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->else:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;

    return-void
.end method

.method public final this()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->const:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->break:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->this:Z

    invoke-virtual {p0, v0, v2, v1}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->class(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->break:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebView:Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;

    .line 5
    iget-object v2, v2, Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView;->if:Lcom/apk/ph;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->break:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->class(Ljava/lang/String;ZZ)V

    :goto_0
    return-void
.end method
