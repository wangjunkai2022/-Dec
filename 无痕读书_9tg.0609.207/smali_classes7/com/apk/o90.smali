.class public Lcom/apk/o90;
.super Ljava/lang/Object;
.source "TrUserFaceLayout.java"

# interfaces
.implements Lcom/apk/s90;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/s90<",
        "Lcom/apk/ga0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/tr/comment/sdk/commons/widget/TrUserFaceLayout$do;


# direct methods
.method public constructor <init>(Lcom/tr/comment/sdk/commons/widget/TrUserFaceLayout$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/o90;->do:Lcom/tr/comment/sdk/commons/widget/TrUserFaceLayout$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/r80;Ljava/lang/Object;I)V
    .locals 1

    .line 1
    check-cast p2, Lcom/apk/ga0;

    .line 2
    iget-object p1, p0, Lcom/apk/o90;->do:Lcom/tr/comment/sdk/commons/widget/TrUserFaceLayout$do;

    invoke-virtual {p2}, Lcom/apk/ga0;->do()Ljava/lang/String;

    move-result-object p3

    .line 3
    iput-object p3, p1, Lcom/tr/comment/sdk/commons/widget/TrUserFaceLayout$do;->public:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    invoke-static {}, Lcom/apk/sb0;->do()Lcom/apk/nb0;

    move-result-object p1

    invoke-virtual {p2}, Lcom/apk/ga0;->do()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lcom/apk/mb0;

    .line 6
    iget-object p3, p1, Lcom/apk/mb0;->if:Landroid/content/SharedPreferences$Editor;

    if-eqz p3, :cond_0

    const-string v0, "SP_USERFACE_TAG_KEY"

    .line 7
    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/apk/mb0;->do()V

    return-void
.end method
