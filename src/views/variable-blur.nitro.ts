import type {
  HybridView,
  HybridViewProps,
  HybridViewMethods,
} from 'react-native-nitro-modules'

type Direction = 'up' | 'down'

export interface VariableBlurProps extends HybridViewProps {
  blurRadius?: number
  direction?: Direction
}

export interface VariableBlurMethods extends HybridViewMethods {}

export type VariableBlur = HybridView<
  VariableBlurProps,
  VariableBlurMethods,
  { ios: 'swift' }
>
