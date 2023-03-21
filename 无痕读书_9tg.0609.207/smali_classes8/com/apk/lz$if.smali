.class public Lcom/apk/lz$if;
.super Lcom/apk/bg;
.source "ComicViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/lz;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/lz;


# direct methods
.method public constructor <init>(Lcom/apk/lz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/lz$if;->do:Lcom/apk/lz;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/lz$if;->do:Lcom/apk/lz;

    .line 2
    iget-object p1, p1, Lcom/apk/lz;->this:Lcom/apk/l00;

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Lcom/apk/f00$else;

    invoke-virtual {p1}, Lcom/apk/f00$else;->do()V

    :cond_0
    return-void
.end method
