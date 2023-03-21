.class public final enum Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;
.super Ljava/lang/Enum;
.source "SwipeItemLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/SwipeItemLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum do:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

.field public static final enum for:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

.field public static final enum if:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

.field public static final enum new:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

.field public static final synthetic try:[Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    const-string v1, "RESET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    new-instance v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    const-string v1, "DRAG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->if:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    new-instance v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    const-string v1, "FLING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->for:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    new-instance v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    const-string v1, "TAP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->new:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    .line 2
    sget-object v6, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->do:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    aput-object v6, v1, v2

    sget-object v2, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->if:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    aput-object v2, v1, v3

    sget-object v2, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->for:Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->try:[Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;
    .locals 1

    .line 1
    const-class v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    return-object p0
.end method

.method public static values()[Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->try:[Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    invoke-virtual {v0}, [Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/biquge/ebook/app/widget/SwipeItemLayout$if;

    return-object v0
.end method
